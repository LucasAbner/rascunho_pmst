<body class="hold-transition skin-gray sidebar-mini">
	<script>
		(function() {
			if (Boolean(sessionStorage.getItem('sidebar-toggle-collapsed'))) {
				var body = document.getElementsByTagName('body')[0];
				body.className = body.className + ' sidebar-collapse';
			}
		})();
	</script>
	<div class="wrapper">
		<div class="content-wrapper">
			<section class="content">

				<?php if ($this->session->flashdata('success')) : ?>
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert">&times;</a>
						<strong><?php echo $this->session->flashdata('success'); ?></strong>
					</div>
				<?php elseif ($this->session->flashdata('error')) : ?>
					<div class="alert alert-warning">
						<a href="#" class="close" data-dismiss="alert">&times;</a>
						<strong><?php echo $this->session->flashdata('error'); ?></strong>
					</div>
				<?php endif; ?>

				<div class="row">
					<div class="col-lg-12">

						<div class="panel-body">
							<h1 class="page-header">

								<?= $this->lang->line('wp-title')  ?>

							</h1>

							<div class="row">
								<div class="col-lg-12">

									<button class="btn btn-info btn-lg" onclick="window.location.href='<?php echo base_url() ?>integration/work-performance-reports/new/<?php echo $project_id ?>'"><i class="fa fa-plus-circle"></i> <?= $this->lang->line('btn-new') ?></button>

								</div>
							</div>

							<br><br>
							<div class="row">
								<div class="col-lg-12">

									<table class="table table-bordered table-striped" id="tableNB">
										<thead>
											<tr>
												<th><?= $this->lang->line('wpr_responsible') ?></th>
												<th><?= $this->lang->line('wpr_date') ?></th>
												<th><?= $this->lang->line('wpr_main_activities') ?></th>

												<th><?= $this->lang->line('btn-actions') ?></th>
											</tr>
										</thead>
										<tbody>
											<?php
											foreach ($work_performance_report as $work) {
											?>

												<tr dados='<?= json_encode($work); ?>'>
													<td><?php echo getStakeholderName($work->responsible) ?></td>
													<td><?php echo $work->date; ?></td>
													<td><?php echo $work->main_activities; ?></td>

													<td>
														<div class="row center">
															<div class="col-sm-3">
																<form action="<?php echo base_url() ?>integration/work-performance-reports/edit/<?php echo $work->work_performance_report_id; ?>" method="post">
																	<input type="hidden" name="project_id" value="<?= $work->project_id; ?>">
																	<button type="submit" class="btn btn-default"><em class="fa fa-pencil"></em><span class="hidden-xs"></span></button>
																</form>
															</div>

															<div class="col-sm-3">
																<!--<form action="<?php echo base_url() ?>Team_Performance_Evaluation/delete/<?php echo $work->work_performance_report_id; ?>" method="post">
												<input type="hidden" name="project_id" value="<?= $work->project_id ?>"> -->
																<button type="submit" class="btn btn-danger" onclick="deletar(<?= $work->project_id ?>, <?= $work->work_performance_report_id; ?>)"><em class="fa fa-trash"></em><span class="hidden-xs"></span></button>
																<!-- </form> -->
															</div>

															<div class="col-sm-3">
																<form target="_blank" action="<?php echo base_url() ?>WorkPerformanceReport_PDF/pdfGenerator/<?php echo $work->work_performance_report_id; ?>" method="post">
																	<input type="hidden" name="project_id" value="<?= $project_id ?>">
																	<button type="submit" class="btn btn-success"><em class="glyphicon glyphicon-file"></em> to PDF<span class="hidden-xs"></span></button>
																</form>
															</div>
														</div>
													</td>
												</tr>
											<?php
											}
											?>

										</tbody>
									</table>


									<form action="<?php echo base_url('project/'); ?><?php echo $project_id; ?>">
										<button class="btn btn-lg btn-info pull-left"> <i class="glyphicon glyphicon-chevron-left"></i> <?= $this->lang->line('btn-back') ?></button>
									</form>
								</div>
							</div>

							<!--1º preencher o nome da view-->
							<?php $view = array(
								"name" => "work_performance_reports",
							); ?>

							<!--Carrega o form de envio e envia para ele o nome da view que tu setou -->
							<?php $this->load->view('upload/index', $view) ?>

							<!--Carrega as imagens do projeto de acordo com a view, utiliza id ou project_id pra pegar o id do projeto e criar a query-->
							<?php $this->load->view('upload/retrieve', $view) ?>

						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>


<?php $this->load->view('frame/footer_view') ?>


<script src="<?= base_url() ?>assets/js/jquery-2.1.3.min.js"></script>
<script src="<?= base_url() ?>assets/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/js/dataTables.bootstrap.js"></script>
<script src="<?= base_url() ?>assets/js/dataTables.responsive.js"></script>
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/alertify.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/css/alertify.min.css" />

<!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
				 -->
<script type="text/javascript">
	'use strict'
	let table;

	$(document).ready(function() {
		table = $('#tableNB').DataTable({
			"columns": [{
					"data": "responsible"
				},
				{
					"data": "date"
				},
				{
					"data": "comments"
				},

				{
					"data": "btn-actions",
					"orderable": false
				}
			],
			"order": [
				[1, 'attr']
			]
		});
	});
</script>

<script type="text/javascript">
	function deletar(idProjeto, id) {
		//e.preventDefault();
		alertify.confirm('Do you agree?').setting({
			'labels': {
				ok: 'Agree',
				cancel: 'Cancel'
			},
			'reverseButtons': false,
			'onok': function() {

				console.log(`Passei o ${idProjeto} e ${id}`);

				$.post("<?php echo base_url() ?>integration/work-performance-reports/delete/" + id, {
					project_id: idProjeto,
				});

				alertify.success('You agree.');
				location.reload();
				//location.reload();
			},
			'oncancel': function() {
				alertify.error('You did not agree.');
			}
		}).show();
	}
</script>