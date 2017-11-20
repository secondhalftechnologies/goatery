import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { GoatDetailsPage } from './goat-details';

@NgModule({
  declarations: [
    GoatDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(GoatDetailsPage),
  ],
})
export class GoatDetailsPageModule {}
