
import { AbilityStage,Want } from '@kit.AbilityKit'
import Logger from '../common/Logger'

const TAG = '[Sample_StartMode]'

export default class MyAbilityStage extends AbilityStage {
  onCreate() {
    Logger.info(TAG, 'MyAbilityStage onCreate')
  }

  onAcceptWant(want: Want) {
    Logger.info(TAG, 'MyAbilityStage onAcceptWant start')
    if (want && want.abilityName === 'SpecifiedAbility') {
      if (want.parameters) {
        return `SpecifiedAbility${want.parameters.foodItemId}`
      }
    }
    return ''
  }
}