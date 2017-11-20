import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { GoatHealthAndMedicalDetailsPage } from './goat-health-and-medical-details';

@NgModule({
  declarations: [
    GoatHealthAndMedicalDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(GoatHealthAndMedicalDetailsPage),
  ],
})
export class GoatHealthAndMedicalDetailsPageModule {}
