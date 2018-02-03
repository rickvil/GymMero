package com.gym

class CredentialController {

    def assetResourceLocator
    def index() {
        println("cargando credential")
        ContractedPack contractedPack = ContractedPack.get(2)
        respond contractedPack.user, model:[contractedPack: contractedPack]

//        def logo = assetResourceLocator.findAssetForURI("logo.jpg")
//        def facebook = assetResourceLocator.findAssetForURI("facebook.png")
//        def wtps = assetResourceLocator.findAssetForURI("whatsapp.png")
//        def map = assetResourceLocator.findAssetForURI("gmaps.png")
//
//        renderPdf(model: [contractedPack: contractedPack, logo: logo.encodeAsMD5Bytes(), facebook: facebook.encodeAsMD5Bytes(), wtps: wtps.encodeAsMD5Bytes(), map: map.encodeAsMD5Bytes()], template: '/credential/cupon')
    }
}