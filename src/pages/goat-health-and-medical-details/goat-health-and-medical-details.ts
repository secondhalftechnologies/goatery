import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the GoatHealthAndMedicalDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-goat-health-and-medical-details',
  templateUrl: 'goat-health-and-medical-details.html',
})
export class GoatHealthAndMedicalDetailsPage {

	goat_health_and_medical: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) 
	{
		this.goat_health_and_medical = formBuilder.group({
			'f8_maintain_medical_records' : ['', Validators.required],
			'f8_is_vaccinated' : ['', Validators.required],
			'f8_vaccination_type' : ['', Validators.required],
			'f8_vaccination_frequency' : ['', Validators.required],
			'f8_vaccination_place' : ['', Validators.required],
			'f8_number_of_vaccinated_goats' : ['', Validators.required],
			'f8_infected_goats' : ['', Validators.required],
			'f8_any_remedy_for_infection' : ['', Validators.required],
			'f8_num_of_died_in_last_one_year' : ['', Validators.required],
			'f8_reason_for_death' : ['', Validators.required],
			'f8_num_of_goats_insured' : ['', Validators.required],
			'f8_num_of_calving_cycles_for_past_two_years' : ['', Validators.required],
			'f8_num_of_births_in_prev_year' : ['', Validators.required],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad GoatHealthAndMedicalDetailsPage');
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
		if (this.goat_health_and_medical.valid) 
		{
			console.log(this.goat_health_and_medical.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
