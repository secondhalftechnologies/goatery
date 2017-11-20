import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { GoatIncomeAndExpenditureDetailsPage } from './goat-income-and-expenditure-details';

@NgModule({
  declarations: [
    GoatIncomeAndExpenditureDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(GoatIncomeAndExpenditureDetailsPage),
  ],
})
export class GoatIncomeAndExpenditureDetailsPageModule {}
