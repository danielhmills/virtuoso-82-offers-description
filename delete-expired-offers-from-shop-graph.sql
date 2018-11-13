-- Remove Expired Offers

SPARQL
WITH <urn:opl:shop:offering:sponging:cache:official> 
DELETE {?s ?p ?o}
WHERE {
       ?s a schema:Offer; schema:validThrough ?valid; ?p ?o . 
       FILTER (isIRI(?s))
       FILTER (?valid < "2018-12-31T23:59:59Z"^^<http://www.w3.org/2001/XMLSchema#dateTime>
              ) 
     
      } 
FOR UPDATE