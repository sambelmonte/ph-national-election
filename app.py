from flask import Flask
from flask_restful import Api, Resource, reqparse
from db import connect
import db_functions

db = connect()
app = Flask(__name__)
api = Api(app)

class AllCandidates(Resource):
    def get(self):
        presidentiables = db_functions.get_presidentiables(db)
        vicePresidentiables = db_functions.get_vice_presidentiables(db)
        senatoriables = db_functions.get_senatoriables(db)
        candidates = {
            "president": presidentiables,
            "vice_president": vicePresidentiables,
            "senator": senatoriables,
            "total_president": len(presidentiables),
            "total_vice_president": len(vicePresidentiables),
            "total_senator": len(senatoriables)
        }
        return candidates, 200

class Candidates(Resource):
    def get(self, type):
        if type == "president":
            presidentiables = db_functions.get_presidentiables(db)
            candidates = {
                "president": presidentiables,
                "total_president": len(presidentiables)
            }
            return candidates, 200
        elif type == "vice_president":
            vicePresidentiables = db_functions.get_vice_presidentiables(db)
            candidates = {
                "vice_president": vicePresidentiables,
                "total_vice_president": len(vicePresidentiables)
            }
            return candidates, 200
        elif type == "senator":
            senatoriables = db_functions.get_senatoriables(db)
            candidates = {
                "senator": senatoriables,
                "total_senator": len(senatoriables)
            }
            return candidates, 200
        else:
            error_message = {
                "error": "There are no candidates for the position of "+type+"."
            }
            return error_message, 404

class Vote(Resource):
    def post(self):
        parser = reqparse.RequestParser()
        parser.add_argument("president")
        parser.add_argument("vice_president")
        parser.add_argument("senator", action='append')
        args = parser.parse_args()

        president_vote = None
        vice_president_vote = None
        senator_vote = []

        if args["president"] != None:
            president_name = db_functions.vote_presidentiable(db, args["president"])
            president_vote = {
                "ballot_number": args["president"],
                "name": president_name
            }
        if args["vice_president"] != None:
            vice_president_name = db_functions.vote_vice_presidentiable(db, args["vice_president"])
            vice_president_vote = {
                "ballot_number": args["vice_president"],
                "name": vice_president_name
            }
        if args["senator"] != None:
            for senator in args["senator"]:
                senator_name = db_functions.vote_senatoriable(db, senator)
                senator_vote.append({
                    "ballot_number": senator,
                    "name": senator_name
                })

        ballot = {
            "president": president_vote,
            "vice_president": vice_president_vote,
            "senator": senator_vote
        }

        return ballot, 200


api.add_resource(AllCandidates, "/")
api.add_resource(Candidates, "/candidates/<string:type>")
api.add_resource(Vote, "/vote")

app.run(debug=True)
