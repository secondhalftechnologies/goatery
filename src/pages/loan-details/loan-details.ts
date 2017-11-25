import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController  } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the LoanDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-loan-details',
  templateUrl: 'loan-details.html',
})
export class LoanDetailsPage {

	loan: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) 
	{
		this.loan = formBuilder.group({
			'f10_taken_any_loan' : ['', Validators.required],
			'f10_loan_purpose' : [''],
			'f10_loan_use' : [''],
			'f10_loan_taken_from_where' : [''],
			'f10_interest_rate' : [''],
			'f10_problems_during_loan_process' : [''],
			'f10_loan_duration' : [''],
			'f10_loan_status' : [''],
			'f10_how_much_yet_to_be_paid' : [''],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad LoanDetailsPage');
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
		if (this.loan.valid) 
		{
			console.log(this.loan.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
