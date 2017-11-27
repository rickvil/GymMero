import com.gym.Activity
import com.gym.TypeActivity

class BootStrap {

    def init = {
        if (Activity.getAll().size() == 0){
            Activity musculacion = new Activity(title: 'Musculacion')
            musculacion.save()
            Activity fitness = new Activity(title: 'Fitness')
            fitness.save()

            TypeActivity general = new TypeActivity(title: 'General')
            general.save()
            TypeActivity aerobics = new TypeActivity(title: 'Aerobics')
            aerobics.save()
            TypeActivity power = new TypeActivity(title: 'Power')
            power.save()
            TypeActivity combate = new TypeActivity(title: 'Combate')
            combate.save()
            TypeActivity step = new TypeActivity(title: 'Step')
            step.save()
            TypeActivity bailaCarla = new TypeActivity(title: 'Baila Carla')
            bailaCarla.save()
            TypeActivity meroBaila = new TypeActivity(title: 'Mero Baila')
            meroBaila.save()
        }
    }
    def destroy = {
    }
}
