import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController} from 'ionic-angular';

interface point<T> {
    [K: string]: T;
}

@IonicPage()
@Component({
  selector: 'page-forms',
  templateUrl: 'forms.html'
})


export class Forms {

	current_farmer: {id:string, image:string, fm_name: string, address: string, points: string};
	form_name: string;
	points: point<string>;
	forms:Array<any>;
	rootNavCtrl: NavController;

	constructor(public navCtrl: NavController, public navParams: NavParams, public loadingCtrl: LoadingController){
		this.current_farmer = navParams.get('farmer');
		this.form_name = navParams.get('form_name');
		this.rootNavCtrl = navParams.get('rootNavCtrl');
		
		this.getFarmerPoints(this.current_farmer.id);
		// let loading = this.presentLoading('Please wait...');
		// loading.present();
		// setTimeout(() => {
		//     loading.dismiss();
		// }, 1000);
	}

	getFarmerPoints(id: string){
		//some http work here
		this.points = {
			'item1' : '10',
			'item2' : '20',
			'item3' : '30',
			'item4' : '40',
			'item5' : '50',
		};

		if(this.form_name == 'kyc'){
			this.forms = [
				{ title: 'FINANCIALS AND OCCUPATION',   pageName: 'KycFinancialAndOccupationPage', point: '0', icon : 'cash'},
				{ title: 'FAMILY MEMBER DETAILS',      	pageName: 'KycFamilyDetailsPage', point: '0', icon : 'people'},
				{ title: 'HOME DETAILS',     			pageName: 'KycHomeDetailsPage', point: '0', icon : 'locate'},
				{ title: 'MIGRATION DETAILS', 			pageName: 'KycMigrationDetailsPage', point: '0', icon : 'phone-portrait'},
			];
		}
		else if(this.form_name == 'land details'){
			this.forms = [
				{ title: 'FARMING Details',  	pageName: 'FarmingDetailsPage', point: '0', icon : 'locate'},
				{ title: 'FARM EQUIPMENT',  	pageName: 'FarmEquipmentPage', point: '0', icon : 'locate'},
			];
		}
		else if(this.form_name == 'goat information'){
			this.forms = [
				{ title: 'GOAT DETAILS',  pageName: 'GoatDetailsPage', point: '0', icon : 'leaf'},
				{ title: 'GOAT HEALTH AND MEDICAL',   pageName: 'GoatHealthAndMedicalDetailsPage', point: '0', icon : 'leaf'},
				{ title: 'GOAT INCOME AND EXPENDITURE',   pageName: 'GoatIncomeAndExpenditurePage', point: '0', icon : 'leaf'},

			];
		}
		else if(this.form_name == 'loan information'){
			this.forms = [
				{ title: 'LOANS & LIABILITIES', pageName: 'LoanAndLiabilitiesPage', point: '0', icon : 'arrow-round-forward'},
				{ title: 'INSURANCE',      		pageName: 'InsurancePage',   point: '0', icon : 'arrow-round-forward'},
			];
		}
		else if(this.form_name == 'total income'){
			this.forms = [
				{ title: 'TOTAL INCOME',     pageName: 'TotalIncomePage', point: '0', icon : 'cash'},
			];
		}
		else if(this.form_name == 'producer company information'){
			this.forms = [
				{ title: 'PRODUCER COMPANY DETAILS',     pageName: 'ProducerCompanyDetailsPage', point: '0', icon : 'cash'},
			];
		}
	}

	presentLoading(text: string) {
	  let loading = this.loadingCtrl.create({
	    content: text
	  });

	  return loading;
	}

	onTap(page: string){
		if (page) {
			this.rootNavCtrl.push(page, { farmer_id: this.current_farmer.id });
		}
	}
}
