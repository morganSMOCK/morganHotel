La base de données qui est présentée est la base de données d'une petite auberge de campagne gérée par deux frères, ils s'y sont d'ailleurs les seuls employés. 


Le système d'attribution des chambres est géré par des ID qui permettent au client de pouvoir réserver une chambre. 


La BDD est composée de trois tables. (Chambre ; réservation et clients).



La clé primaire "id_client" est présente dans la table "clients" et est utiliser dans la table "réservation" afin d'attribuer un numéro qui va nous permettre d'identifier la réservation du client.


La clé primaire "id_reservation" est présente dans la table "reservation" et est utiliser dans la table "chambre" afin d'attribuer un numéro qui va nous permettre de réserver la chambre pour le client.