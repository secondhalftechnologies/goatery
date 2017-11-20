import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { KycMigrationDetailsPage } from './kyc-migration-details';

@NgModule({
  declarations: [
    KycMigrationDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(KycMigrationDetailsPage),
  ],
})
export class KycMigrationDetailsPageModule {}
