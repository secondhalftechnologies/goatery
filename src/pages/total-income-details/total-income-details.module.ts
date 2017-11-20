import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { TotalIncomeDetailsPage } from './total-income-details';

@NgModule({
  declarations: [
    TotalIncomeDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(TotalIncomeDetailsPage),
  ],
})
export class TotalIncomeDetailsPageModule {}
