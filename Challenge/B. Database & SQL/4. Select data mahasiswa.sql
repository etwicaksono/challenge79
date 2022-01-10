SELECT
	m.*,
	(
		ABS(
			YEAR ( tgl_lahir ) - YEAR (
			CURDATE()))) umur,
	d.nama dosen,
	mk.nama mata_kuliah,
	dn.nilai 
FROM
	mahasiswa m
	LEFT JOIN data_nilai dn ON m.nim = dn.nim
	LEFT JOIN dosen d ON dn.id_dosen = d.id
	LEFT JOIN mata_kuliah mk ON mk.id = dn.id_mata_kuliah 
WHERE
	dn.nilai < 70 
GROUP BY
	m.nim 
ORDER BY
	dn.nilai DESC;