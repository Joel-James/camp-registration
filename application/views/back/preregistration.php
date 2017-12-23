<?php
// If accessed directly, Amen.
defined( 'BASEPATH' ) or exit( 'God bless you!' );
?>
<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="<?= base_url( 'assets/dist/img/user2-160x160.jpg'); ?>" class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>Camp Admin</p>
					<a href="<?= base_url( 'logout' ); ?>"><i class="fa fa-circle text-success"></i> Logout</a>
				</div>
			</div>
			<!-- /.search form -->
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">Pre Registration</li>
				<li class="treeview">
					<a href="<?= base_url( 'admin/report' ); ?>">
						<i class="fa fa-table"></i> <span>Attendee Report</span>
						<span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
					</a>
				</li>
                <li class="treeview active">
                    <a href="<?= base_url( 'admin/preregistration' ); ?>">
                        <i class="fa fa-table"></i> <span>Pre Registration</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                </li>
			</ul>
		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
                Pre Registration
				<small>attendees import</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Admin</a></li>
				<li class="active">Pre Registration</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<?php $error = $this->session->flashdata( 'error' ); ?>
					<?php $success = $this->session->flashdata( 'success' ); ?>
					<?php if ( isset( $error ) ) : ?>
						<div class="callout callout-danger">
							<?= $error ?>
						</div>
					<?php elseif ( isset( $success ) ) : ?>
						<div class="callout callout-success">
							<?= $success ?>
						</div>
					<?php endif; ?>
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Attendees Import</h3>
						</div>
						<!-- /.box-header -->
                         <?= form_open_multipart( 'admin/preregistration/import' ); ?>
                            <div class="box-body">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label></label>
                                        <input type="file" id="attendees" name="attendees">
                                        <p class="help-block">Select pre registration attendees.</p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group has-feedback">
                                        <label></label>
                                        <button class="btn btn-block btn-primary" id="import">Import</button>
                                    </div>
                                </div>
                            </div>
                        </form>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
	</div>
