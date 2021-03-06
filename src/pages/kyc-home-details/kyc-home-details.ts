import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the KycHomeDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-kyc-home-details',
  templateUrl: 'kyc-home-details.html',
})
export class KycHomeDetailsPage {

	home: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) {
		this.home = formBuilder.group({
			'f3_house_type' : ['', Validators.required],
			'f3_is_electricity' : ['', Validators.required],
			'f3_is_gas_connection' : ['', Validators.required],
			'f3_is_tv' : ['', Validators.required],
			'f3_is_radio' : ['', Validators.required],
			'f3_is_fan' : ['', Validators.required],
			'f3_is_mobile' : ['', Validators.required],
			'f3_is_mixer' : ['', Validators.required],
			'f3_is_cooker' : ['', Validators.required],
			'f3_is_bed' : ['', Validators.required],
			'f3_num_of_chairs' : ['', Validators.required],
			'f3_num_of_cycle' : ['', Validators.required],
			'f3_num_of_motorcycle' : ['', Validators.required],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad KycHomeDetailsPage');
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
		if (this.home.valid) 
		{
			console.log(this.home.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
