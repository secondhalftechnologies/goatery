import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the LandFarmingDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-land-farming-details',
  templateUrl: 'land-farming-details.html',
})
export class LandFarmingDetailsPage {

	farming: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) {
		this.farming = formBuilder.group({
			'f5_own_land' : ['', Validators.required],
			'f5_leased_in_land' : ['', Validators.required],
			'f5_leased_out_land' : ['', Validators.required],
			'f5_barren_land' : ['', Validators.required],
			'f5_cultivable_land' : ['', Validators.required],
			'f5_irrigated_land' : ['', Validators.required],
			'f5_acreage_irrigated_land' : ['', Validators.required],
			'f5_unirrigated_land' : ['', Validators.required],
			'f5_acreage_unirrigated_land' : ['', Validators.required],
			'f5_annual_income_of_farming' : ['', Validators.required],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad LandFarmingDetailsPage');
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
		if (this.farming.valid) 
		{
			console.log(this.farming.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
