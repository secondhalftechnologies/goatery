import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the LandFarmEquipmentDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-land-farm-equipment-details',
  templateUrl: 'land-farm-equipment-details.html',
})
export class LandFarmEquipmentDetailsPage {

	equipment: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) {
		this.equipment = formBuilder.group({
			'f6_Borewell' : ['', Validators.required],
			'f6_Well' : ['', Validators.required],
			'f6_Water_Tank' : ['', Validators.required],
			'f6_Water_Pump' : ['', Validators.required],
			'f6_Diesel_Pump' : ['', Validators.required],
			'f6_Drip_Irrigation' : ['', Validators.required],
			'f6_Tractor' : ['', Validators.required],
			'f6_Tractor_Trolley' : ['', Validators.required],
			'f6_Bullock_Cart' : ['', Validators.required],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad LandFarmEquipmentDetailsPage');
	}

	showMessage(message, style: string, dur?: number)
	{
		const toast = this.toastCtrl.create({
			message: message,
			showCloseButton: true,
			duration: dur || 5000,
			closeButtonText: 'Ok',
			cssClass: style,
			dismissOnPageChange: true
	    });

	    toast.present();
	}

	save()
	{
		this.submitAttempt = true;
		if (this.equipment.valid) 
		{
			console.log(this.equipment.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
