<template>
	<div>
		<h2>Users</h2>
		<!-- <a href="" class="btn btn-success pull-right">Add New</a> -->
		<button class="btn btn-success" @click="openModal">Add New <i class="fas fa-user-plus fa-fw"></i></button>
		<!-- 
		<table class="table table-bordered">
		    <thead>
		        <tr>
		        	<th></th>
		            <th>ID</th>
		            <th>Firstname</th>
		            <th>Lastname</th>
		            <th>Adress</th>
		        </tr>
		    </thead>
		    <tbody>
		        

		    	
				<tr v-for="stud in students">
				    <td>
				        <a href="" class="btn btn-primary">Edit</a>
				       <a href="" class="btn btn-danger">Delete</a>
				   </td>
				   <td>{{ stud.id }}</td>
				    <td>{{ stud.firstname }}</td>
				    <td>{{ stud.lastname }}</td>
				   <td>{{ stud.address }}</td>
				</tr> 


		    </tbody>    

		</table>
		-->	
			<br><br>
			<div class="tableFilters">
	            <input class="form-control input col-md-3" type="text" v-model="tableData.search" placeholder="Search Table" @input="getStudents()">
	            <br>
	            <div class="form-control col-md-3">
	                <div class="select">
	                    <select v-model="tableData.length" @change="getStudents()">
	                        <option v-for="(records, index) in perPage" :key="index" :value="records">{{records}}</option>
	                    </select>
	                </div>
	            </div>
	        </div>

	        <pagination :pagination="pagination" @prev="getStudents(pagination.prevPageUrl)" @next="getStudents(pagination.nextPageUrl)"></pagination>
			<datatable :columns="columns" :sortKey="sortKey" :sortOrders="sortOrders" @sort="sortBy">
	            <tbody>
	                <tr v-for="stud in students" :key="stud.id">
	                    <td>
	                    	<!-- <input type="text" name="id" id="studid" class="hidden" v-model="stud.id"> -->
	                    	<button class="btn btn-primary" @click="editdata(stud.id)">Edit</button>
	                    	<button class="btn btn-danger" @click="deldata(stud.id)">Delete</button>
	                    </td>
	                    <td>{{stud.id}}</td>
	                    <td>{{stud.firstname}}</td>
	                    <td>{{stud.lastname}}</td>
	                    <td>{{stud.address}}</td>
	                </tr>
	            </tbody>
	        </datatable>
	        <pagination :pagination="pagination" @prev="getStudents(pagination.prevPageUrl)" @next="getStudents(pagination.nextPageUrl)"></pagination>
        	<br>

        	<div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNewLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="addNewLabel">Add new</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			      	<form method="post" id="addNew_form" ref="myForm">
			      		<input type="text" name="" id="up_ind"  hidden="hidden">
			      		<input type="text" name="" id="id_ind" hidden="hidden">
			      		<input type="text" name="" id="id_ind"  hidden="hidden">

				       	<input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name"><br>
				       	<input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name" ><br>
				       	<input type="text"  class="form-control" name="address" id="address" placeholder="Address"><br>
			       	</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary" @click="savedata">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
			
	</div>



</template>

<script>

import Datatable from './Datatable.vue'
import Pagination from './Pagination.vue'

export default{
	components: { datatable: Datatable, pagination: Pagination },
	created() {
        this.getStudents();
    },
	data(){
			let sortOrders = [];
			let columns = [
				{width: '20%', label: '', name: '' },
				{width: '20%', label: 'ID', name: 'id' },
				{width: '25%', label: 'Firtname', name: 'firstname' },
	            {width: '25%', label: 'Lastname', name: 'lastname'},
	            {width: '50%', label: 'Address', name: 'address'}
			];
			columns.forEach((column) => {
	           sortOrders[column.name] = -1;
	        });
		return {
			students: [],
            columns: columns,
            sortKey: 'deadline',
            sortOrders: sortOrders,
            perPage: ['10', '20', '30'],
            tableData: {
                draw: 0,
                length: 10,
                search: '',
                column: 0,
                dir: 'desc',
            },
            pagination: {
                lastPage: '',
                currentPage: '',
                total: '',
                lastPageUrl: '',
                nextPageUrl: '',
                prevPageUrl: '',
                from: '',
                to: ''
            },
		}
	},methods:{ //


		openModal(){
			
			$('#addNewLabel').text('Add New')
			$('#up_ind').val('')
			$('#id_ind').val('')
		  	$('#firstname').val('')
		  	$('#lastname').val('')
		  	$('#address').val('')
			$('#addNew').modal('show');
		},
		editdata(studid){

			//console.log(studid);

			axios.get('/api/student/'+studid, {
			})
			.then(function (response) {
			    let data = response.data
			    console.log(data.firstname);
			  	$('#addNewLabel').text('Update')

			  	$('#up_ind').val('Update')
			  	$('#id_ind').val(data.id)
			  	

			  	$('#firstname').val(data.firstname)
			  	$('#lastname').val(data.lastname)
			  	$('#address').val(data.address)
				
				$('#addNew').modal('show');
			})
		},
		deldata(data){
			axios.delete('/api/student/'+data, {
			})
			  .then(function (response) {
			    console.log(response);
			  })
			  this.getStudents();
		},
		savedata(){
			let up_ind = $('#up_ind').val();
			let id_ind = $('#id_ind').val();


			if(up_ind!=''){
				axios.put('/api/student/'+id_ind, {
				    firstname: $('#firstname').val(),
				    lastname: $('#lastname').val(),
				    address: $('#address').val()
				  })
				  .then(function (response) {
				    console.log(response);
				  	
				  })
				  $('#addNew').modal('hide');
			     this.getStudents();
			}
			else{
				axios.post('/api/student', {
				    firstname: $('#firstname').val(),
				    lastname: $('#lastname').val(),
				    address: $('#address').val()
				  })
				  .then(function (response) {
				    console.log(response);
				  	
				  })
				  $('#addNew').modal('hide');
			     this.getStudents();
			}
		}
		,
		getStudents(url = '/api/student') {
            this.tableData.draw++;
            axios.get(url, {params: this.tableData})
                .then(response => {
                    let data = response.data;
                    if (this.tableData.draw == data.draw) {
                        this.students = data.data.data;
                        this.configPagination(data.data);
                    }
                })
                .catch(errors => {
                    console.log(errors);
                });
        },
		configPagination(data) {
            this.pagination.lastPage = data.last_page;
            this.pagination.currentPage = data.current_page;
            this.pagination.total = data.total;
            this.pagination.lastPageUrl = data.last_page_url;
            this.pagination.nextPageUrl = data.next_page_url;
            this.pagination.prevPageUrl = data.prev_page_url;
            this.pagination.from = data.from;
            this.pagination.to = data.to;
        },
        sortBy(key) {
            this.sortKey = key;
            this.sortOrders[key] = this.sortOrders[key] * -1;
            this.tableData.column = this.getIndex(this.columns, 'name', key);
            this.tableData.dir = this.sortOrders[key] === 1 ? 'asc' : 'desc';
            this.getStudents();
        },
        getIndex(array, key, value) {
            return array.findIndex(i => i[key] == value)
        },
	}
	


}

// export default {

	// 	data(){
	// 		return {
	// 			students: [],
	// 			stud: {
	// 				id: 0,
	// 				firstname: '',
	// 				lastname: '',
	// 				address: ''
	// 			}

	// 		}
	// 	},


	// 	mounted(){
	// 		this.getStudents()
	// 	},methods:{
	// 		getStudents(){
	// 			axios.get('/api/student').then(response => {
	// 				console.log(response)
	// 				this.students = response.data

	// 			})
	// 		}
	// 	}
	// }


</script>
