/************************************************************* Total - Script */
url_metrics = "/api/info/metrics/";
function getvals(url, div, expr, param) {
  fetch(url)
    .then((response) => {
      return response.json();
    })
    .then((myJson) => {
      switch (expr) {
        case "Total":
          document.getElementById(div).innerHTML = myJson.data.count;
          break;
      }
    });
}

// Para chamar as metricas coloque esses comandos na custom-homepage.html
/* Script para chamar as metricas */
/*
<script>
getvals(url_metrics + 'dataverses', 'ID_dataverse', 'Total');
getvals(url_metrics + 'datasets', 'ID_grupos', 'Total');
getvals(url_metrics + 'files', 'div3', 'Total');
getvals(url_metrics + 'downloads', 'div4', 'Total');
</script>
*/
