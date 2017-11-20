import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { KycHomeDetailsPage } from './kyc-home-details';

@NgModule({
  declarations: [
    KycHomeDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(KycHomeDetailsPage),
  ],
})
export class KycHomeDetailsPageModule {}
