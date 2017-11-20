import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ProducerCompanyDetailsPage } from './producer-company-details';

@NgModule({
  declarations: [
    ProducerCompanyDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(ProducerCompanyDetailsPage),
  ],
})
export class ProducerCompanyDetailsPageModule {}
