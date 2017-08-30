<?php
/**
 * li₃: the most RAD framework for PHP (http://li3.me)
 *
 * Copyright 2016, Union of RAD. All rights reserved. This source
 * code is distributed under the terms of the BSD 3-Clause License.
 * The full license text can be found in the LICENSE.txt file.
 */

namespace app\controllers;

use app\models\Pg;
use app\models\TalentiPg;
/**
 * This controller is used for serving static pages by name, which are located in the `/views/pages`
 * folder.
 *
 * A Lithium application's default routing provides for automatically routing and rendering
 * static pages using this controller. The default route (`/`) will render the `home` template, as
 * specified in the `view()` action.
 *
 * Additionally, any other static templates in `/views/pages` can be called by name in the URL. For
 * example, browsing to `/pages/about` will render `/views/pages/about.html.php`, if it exists.
 *
 * Templates can be nested within directories as well, which will automatically be accounted for.
 * For example, browsing to `/pages/about/company` will render
 * `/views/pages/about/company.html.php`.
 */
class PgController extends \lithium\action\Controller {

	/*
	* lista di tutti i PG
	*/
	public function index(){
		$pgs = Pg::find('all', [
			'with'  => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni'], #'Iscritti'] 
			'order'	=> ['id']
		]);

		return json_encode($pgs->data());
	}

	/*
	* funzione per ottenere tutte le informazioni su un PG
	*/
	public function get($id){
		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}

	/*
	* funzione per aggiungere un nuovo pg
	*/
	public function add(){
		$pg = Pg::create();
		
		if($this->request->data && $pg->save($this->request->data)) {
			$id = $pg->data('id');
			$i = 1;
			while ($i <= 6){
				if(isset($this->request->data['talento_'.$i])){
					$data = [
						'id_pg' => $id, 
						'id_talento' => $this->request->data['talento_'.$i]
					];

					print_r($data);
					$talento_pg = TalentiPg::create();
					$a = $talento_pg->save($data);
					print_r($a);
				}

				$i++;
			}

			$pg_saved = Pg::find('all', [
				'conditions' => ['id' => $id],
				'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
			]);
			return json_encode($pg_saved->data());
		}else{
			//error
		}

		return json_encode(null);		
	}
	
	/*
	* funzione per impostare lo stato su morto, con la possibilità di modificare le note del personaggio
	* ritorna i dati del pg appena modificato
	*/
	public function uccidi($id, $note_pg, $note_staff){
		Pg::update([
			'stato' => 3,
			'note_pg' => $note_pg,
			'note_staff' => $note_staff 
		],
		[
			'id' => $id 
		]);

		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}

	/*
	* funzione per impostare lo stato su parcheggiato, con la possibilità di modificare le note del personaggio
	*/
	public function parcheggia($id, $note_pg, $note_staff){
		Pg::update([
			'stato' => 2,
			'note_pg' => $note_pg,
			'note_staff' => $note_staff 
		],
		[
			'id' => $id 
		]);

		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}
	
	/*
	* funzione per impostare lo stato su confermato, con la possibilità di modificare le note del personaggio e il bg
	*/
	public function conferma($id, $note_pg, $note_staff, $bg){
		Pg::update([
			'stato' => 1,
			'note_pg' => $note_pg,
			'note_staff' => $note_staff,
			'background' => $bg 
		],
		[
			'id' => $id 
		]);

		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}

	/*
	* lista talento pg
	*/
	public function talentiPg($id){
		$talenti = TalentiPg::find('all', [
			'conditions' => ['id_pg' => $id],
			'with'       => ['Talenti'],
			'order'		 => ['id_talento']			
		]);
		return json_encode($talenti->data());
	}	

	/*
	* funzione per aggiungere un talento ad un PG
	*/
	public function aggiungiTalento($id, $id_talento){
		$talento = TalentiPg::create();
		$talento->save([
			'id_pg' => $id,
			'id_talento' => $id_talento
		]);

		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}

	/*
	* funzione per rimuovere un talento ad un PG
	*/
	public function rimuoviTalento($id, $id_talento){
		$talento = TalentiPg::find('all', [
			'conditions' => [
				'id_pg' => $id,
				'id_talento' => $id_talento				
			],
		]);
		$talento->delete();

		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}

	/*
	* funzione per cambiare un talento ad un PG
	*/
	public function cambiaTalento($id, $id_talento_old, $id_talento_new){
		$TalentiPg::update([
			'id_talento' => $id_talento_new
		],
		[
			'id_pg' => $id,
			'id_talento' => $id_talento_old
		]);

		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni']#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}
}

?>