echo "habilita a busca dentro dos PDF"
curl -X PUT -d true http://localhost:8080/api/admin/settings/:SolrFullTextIndexing

echo "Limite de caracteres a ser indexado no PDF"
curl -X PUT -d 314572800 http://localhost:8080/api/admin/settings/:SolrMaxFileSizeForFullTextIndexing