<div class="form-group text-right">
 <?php if($this->permission->method('production','create')->access()): ?>
<a href="<?php echo base_url("production/production/productionunit")?>" class="btn btn-primary btn-md"><i class="fa fa-plus-circle" aria-hidden="true"></i>
<?php echo display('production_add')?></a> 
<?php endif; ?>

</div>
<div id="edit" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <strong><?php echo "Set Production Unit";?></strong>
            </div>
            <div class="modal-body editinfo">
            
    		</div>
     
            </div>
            <div class="modal-footer">

            </div>

        </div>

    </div>
<div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 

            <div class="panel-body">
                <table width="100%" class="datatable2 table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('item_name') ?></th>
                            <th><?php echo display('action') ?></th> 
                           
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($productionlist)) { ?>
                            <?php $sl = $pagenum+1; ?>
                            <?php foreach ($productionlist as $items) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $items->ProductName; ?></td>
                                   <td class="center">
                                    <input name="url" type="hidden" id="url_<?php echo $items->foodid; ?>" value="<?php echo base_url("production/production/getset") ?>" />
                                    <?php if($this->permission->method('production','update')->access()): ?>
                                        <a href="<?php echo base_url("production/production/updateintfrm/$items->foodid") ?>" class="btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a> 
                                         <?php endif; ?>
                                         <a onclick="editinfo(<?php echo $items->foodid; ?>)" class="btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View Details"><i class="fa fa-eye" aria-hidden="true"></i></a> 
                                    </td>
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } ?> 
                    </tbody>
                </table>  <!-- /.table-responsive -->
                <div class="text-right"><?php echo @$links?></div>
            </div>
        </div>
    </div>
</div>

     
