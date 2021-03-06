<?php

class DimensionActivityTest extends Kiva\Vertex\Testing\VertexTestCase {

	public function testTotalCount() {
		$result = $this->db->query("select count(1) as how_many from $this->vertex_schema.vertex_dim_activity");
		$count_from_vertex = $result->fetchColumn();

		$result = $this->db->query("select count(1) as how_many from $this->reference_schema.verse_dim_activity");
		$count_from_kiva_ods = $result->fetchColumn();

		//we're filtering out the verse row with id = 0, name = 'None'
		$this->assertEquals($count_from_kiva_ods-1,$count_from_vertex);
	}

	public function testRegions() {
		$result = $this->db->query("select count(*) from $this->vertex_schema.vertex_dim_activity where sector_id is null");
		$this->assertEquals((int)$result->fetchColumn(), 0);
	}

	public function testNames() {
		$result = $this->db->query("select count(*) from $this->vertex_schema.vertex_dim_activity where name is null");
		$this->assertEquals((int)$result->fetchColumn(), 0);
	}

	//todo add foreign key reference check to vertex_dim_sector

}