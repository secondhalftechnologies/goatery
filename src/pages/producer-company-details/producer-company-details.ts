import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the ProducerCompanyDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-producer-company-details',
  templateUrl: 'producer-company-details.html',
})
export class ProducerCompanyDetailsPage {

	producer_company_details: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) 
	{
		this.producer_company_details = formBuilder.group({
			'f13_is_shg_member' : [''],
			'f13_is_part_of_this_project' : [''],
			'f13_member_of_fpc' : [''],
			'f13_which_fpc_member_you_are' : [''],
			'f13_wish_to_be_part_of_this_fpc' : [''],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad ProducerCompanyDetailsPage');
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
		if (this.producer_company_details.valid) 
		{
			console.log(this.producer_company_details.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
