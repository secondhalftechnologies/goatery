import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { LandFarmEquipmentDetailsPage } from './land-farm-equipment-details';

@NgModule({
  declarations: [
    LandFarmEquipmentDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(LandFarmEquipmentDetailsPage),
  ],
})
export class LandFarmEquipmentDetailsPageModule {}
