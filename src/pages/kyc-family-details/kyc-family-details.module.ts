import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { KycFamilyDetailsPage } from './kyc-family-details';

@NgModule({
  declarations: [
    KycFamilyDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(KycFamilyDetailsPage),
  ],
})
export class KycFamilyDetailsPageModule {}
