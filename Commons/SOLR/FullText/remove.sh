echo "habilita a busca dentro dos PDF"
curl -X PUT -d false http://localhost:8080/api/admin/settings/:SolrFullTextIndexing
