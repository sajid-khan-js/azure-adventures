import logging
import uuid
import json
import azure.functions as func

def main(req: func.HttpRequest, docout: func.Out[func.Document], docin: func.DocumentList) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    # create item
    doc = func.DocumentList() 
    newvisit_dict = {
            "id": str(uuid.uuid4()),
        }
    doc.append(func.Document.from_dict(newvisit_dict))
    docout.set(doc)

    visits = {
        "value": len(docin) + 1,
        }

    return func.HttpResponse(
        json.dumps(visits),
        mimetype="application/json",
    )
