<div class="accordion" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Inject Virtual Entity Service
			</h6>
		</a>
		<div class="collapse" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					property name="virtualCarService" inject="entityService:SimpleCar";<br>
					...
				</div>
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse2" data-target="#collapse2">
			<h6 class="m-0 font-weight-bold text-primary">
				Create a Car
			</h6>
		</a>
		<div class="collapse" id="collapse2" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var newCar = virtualCarService.new( properties={Year: 2012, ListPrice: 22000});
				</div>
				<cfdump var="#prc.newcar#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse3" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse3" data-target="#collapse3">
			<h6 class="m-0 font-weight-bold text-primary">
				Find a Specific Car
			</h6>
		</a>
		<div class="collapse" id="collapse3" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var foundCar = virtualCarService.findWhere( criteria={ CarID = 12 } );
				</div>
				<cfdump var="#prc.mycar#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse4" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse4" data-target="#collapse4">
			<h6 class="m-0 font-weight-bold text-primary">
				List Cars
			</h6>
		</a>
		<div class="collapse" id="collapse4" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var carList = virtualCarService.list( max=3, asQuery=false );
				</div>
				<cfdump var="#prc.cars#" expand="true">
			</div>
		</div>
	</div>
</div>