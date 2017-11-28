import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { RegUserPage } from './reg-user';

@NgModule({
  declarations: [
    RegUserPage,
  ],
  imports: [
    IonicPageModule.forChild(RegUserPage),
  ],
})
export class RegUserPageModule {}
