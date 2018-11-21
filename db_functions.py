def get_presidentiables(db):
    cursor = db.cursor()
    cursor.execute("SELECT PR.VoteNum, PR.Name, PP.Name, PP.Shorthand, PR.votes " +
                    "FROM Presidentiables PR INNER JOIN Political_Parties PP " +
                    "ON PR.PresParty = PP.PolPartyID ORDER BY PR.VoteNum;")
    rows = cursor.fetchall()
    presidentiables = []
    for entry in rows:
        party = entry[3]
        if party == None:
            party = entry[2]
        newEntry = {
            "ballot_number": entry[0],
            "name": entry[1],
            "party": party,
            "votes": entry[4]
        }
        presidentiables.append(newEntry)
    cursor.close()
    return presidentiables

def get_vice_presidentiables(db):
    cursor = db.cursor()
    cursor.execute("SELECT VP.VoteNum, VP.Name, PP.Name, PP.Shorthand, VP.votes " +
                    "FROM Vice_Presidentiables VP INNER JOIN Political_Parties PP " +
                    "ON VP.VPresParty = PP.PolPartyID ORDER BY VP.VoteNum;")
    rows = cursor.fetchall()
    vicePresidentiables = []
    for entry in rows:
        party = entry[3]
        if party == None:
            party = entry[2]
        newEntry = {
            "ballot_number": entry[0],
            "name": entry[1],
            "party": party,
            "votes": entry[4]
        }
        vicePresidentiables.append(newEntry)
    cursor.close()
    return vicePresidentiables

def get_senatoriables(db):
    cursor = db.cursor()
    cursor.execute("SELECT SN.VoteNum, SN.Name, PP.Name, PP.Shorthand, SN.votes " +
                    "FROM Senatoriables SN INNER JOIN Political_Parties PP " +
                    "ON SN.SenParty = PP.PolPartyID ORDER BY SN.VoteNum;")
    rows = cursor.fetchall()
    senatoriables = []
    for entry in rows:
        party = entry[3]
        if party == None:
            party = entry[2]
        newEntry = {
            "ballot_number": entry[0],
            "name": entry[1],
            "party": party,
            "votes": entry[4]
        }
        senatoriables.append(newEntry)
    cursor.close()
    return senatoriables

def vote_presidentiable(db, ballot_number):
    cursor = db.cursor()
    cursor.execute("UPDATE Presidentiables SET votes = votes + 1 WHERE VoteNum = " + ballot_number + ";")
    cursor.execute("SELECT Name FROM Presidentiables WHERE VoteNum = " + ballot_number + ";")
    row = cursor.fetchone()
    candidate = row[0]
    cursor.close()
    return candidate

def vote_vice_presidentiable(db, ballot_number):
    cursor = db.cursor()
    cursor.execute("UPDATE Vice_Presidentiables SET votes = votes + 1 WHERE VoteNum = " + ballot_number + ";")
    cursor.execute("SELECT Name FROM Vice_Presidentiables WHERE VoteNum = " + ballot_number + ";")
    row = cursor.fetchone()
    candidate = row[0]
    cursor.close()
    return candidate

def vote_senatoriable(db, ballot_number):
    cursor = db.cursor()
    cursor.execute("UPDATE Senatoriables SET votes = votes + 1 WHERE VoteNum = " + ballot_number + ";")
    cursor.execute("SELECT Name FROM Senatoriables WHERE VoteNum = " + ballot_number + ";")
    row = cursor.fetchone()
    candidate = row[0]
    cursor.close()
    return candidate
