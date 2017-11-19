import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { KycFinancialAndOccupationPage } from './kyc-financial-and-occupation';

@NgModule({
  declarations: [
    KycFinancialAndOccupationPage,
  ],
  imports: [
    IonicPageModule.forChild(KycFinancialAndOccupationPage),
  ],
})
export class KycFinancialAndOccupationPageModule {}
