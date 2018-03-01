package com.gym
import com.gym.ConfirmRegisterDto

class RegisterAssistanceController {

    def index() {
        respond view: 'index'
    }

    def validatedRegister(String credential){
        ContractedPack contractedPack = ContractedPack.findByBarCode(credential)
        if(contractedPack){

            if (contractedPack.isExpiredCredential()){
                flash.error = "Credencial de MeroSocio: " + contractedPack.user.completeName+ " esta vencida"
                redirect(action: "index")
            }else if(!contractedPack.user.active){
                flash.error = "MeroSocio: " + contractedPack.user.completeName+ " no se encuentra ACTIVO"
                redirect(action: "index")
            }else if(contractedPack.assistedClasses >= contractedPack.credit){
                flash.error = "MeroSocio: " + contractedPack.user.completeName + ", ya usaste tus " + contractedPack.credit + " clases!!. Renueva tu pack"
                redirect(action: "index")
            }else {
                respond contractedPack.user, model:[contractedPack: contractedPack, user: contractedPack.user], view:'validatedRegister'
            }
        }else{
            flash.error = "Credencial no valida"
            redirect(action: "index")
        }
    }

    def confirmRegister(ConfirmRegisterDto confirmRegisterDto){
        ContractedPack contractedPack = ContractedPack.findByBarCode(confirmRegisterDto.credentialUser)
        contractedPack.assistedClasses = contractedPack.assistedClasses + 1
        contractedPack.save(flush: true, failOnError: true)

        Assistance assistance = new Assistance(contractedPack: contractedPack, dateAssistance: new Date(),
                authorizedBy: confirmRegisterDto.credentialInstructor)
        assistance.save(flush: true, failOnError: true)

        flash.error = "Se registro con exito la asistencia " + contractedPack.user.completeName
        redirect(action: "index")
    }
}