import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { LandFarmingDetailsPage } from './land-farming-details';

@NgModule({
  declarations: [
    LandFarmingDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(LandFarmingDetailsPage),
  ],
})
export class LandFarmingDetailsPageModule {}
