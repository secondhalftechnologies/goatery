import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the InsuranceDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-insurance-details',
  templateUrl: 'insurance-details.html',
})
export class InsuranceDetailsPage {

	insurance: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) 
	{
		this.insurance = formBuilder.group({
			'f11_are_your_gost_insured' : ['', Validators.required],
			'f11_which_breed_is_insured' : [''],
			'f11_insuring_agency' : [''],
			'f11_premium_amount_to_pay' : [''],
			'f11_duration_of_premium' : [''],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad InsuranceDetailsPage');
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
		if (this.insurance.valid) 
		{
			console.log(this.insurance.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
