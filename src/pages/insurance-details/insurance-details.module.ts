import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { InsuranceDetailsPage } from './insurance-details';

@NgModule({
  declarations: [
    InsuranceDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(InsuranceDetailsPage),
  ],
})
export class InsuranceDetailsPageModule {}
