<?php

class FactZipOperationsCreditChangeTest extends Kiva\Vertex\Testing\VertexTestCase {
	public function setUp() {
		parent::setUp();
	}

	public function tearDown() {
		parent::tearDown();
	}

	public function testCount() {
		$result = $this->db->query("select count(1) as how_many from $this->vertex_schema.vertex_fact_zip_operations_credit_change");
		$count_from_fact = $result->fetchColumn();

		$result = $this->db->query("select count(1) as how_many from $this->reference_schema.verse_fact_zip_operations_credit_change");
		$count_from_ods = $result->fetchColumn();

		//echo "count from fact: " . $count_from_fact . " count from ods: $count_from_ods\n";
		$this->assertEquals($count_from_ods,$count_from_fact);
	}

	public function testCreditChangeTypeIdCount() {
		$result = $this->db->query("select count(1) as how_many
			from $this->vertex_schema.vertex_fact_zip_operations_credit_change
			where credit_change_type_id > 0");
		$count_from_vertex = $result->fetchColumn();

		$result = $this->db->query("select count(1) as how_many
			from $this->reference_schema.verse_fact_zip_operations_credit_change
			where dim_credit_change_type_id  > 0");
		$count_from_verse = $result->fetchColumn();

		$this->assertSame($count_from_verse,$count_from_vertex);
	}

	public function testSample() {
		$result = $this->db->query("select zip_operations_credit_change_id,effective_time,effective_day_id,create_time,
			create_day_id,price,currency,description,pp_txn_id,mpesa_receipt_no,admin_user_id,fx_rate_id,credit_change_type_id
			from $this->vertex_schema.vertex_fact_zip_operations_credit_change
			where zip_operations_credit_change_id in (567, 678, 789, 904, 342, 46922)
			order by zip_operations_credit_change_id");
		$from_vertex = $result->fetchAll();


		$result = $this->db->query("select occ.zip_operations_credit_change_id,occ.effective_time,occ.effective_day_id,
			occ.create_time,occ.create_day_id,occ.price,currency,occ.description,occ.pp_txn_id,occ.mpesa_receipt_no,
			occ.admin_user_id,occ.fx_rate_id,cct.credit_change_type_id
			from $this->reference_schema.verse_fact_zip_operations_credit_change occ
			left join $this->reference_schema.verse_dim_credit_change_type cct on occ.dim_credit_change_type_id = cct.v_id and cct.v_current = true
			where zip_operations_credit_change_id in (567, 678, 789, 904, 342, 46922)
			order by zip_operations_credit_change_id");
		$from_dim = $result->fetchAll();

		$this->assertSame($from_dim,$from_vertex);
	}

}