    <form action="<?php echo base_url('home_controller/ajout_besoin') ?>" method="POST">   
        <div class="col-md-10 achatMatiere">
            <div class="quantite"> 
                <div class="titleMatiere"><h4>Selectionnez le besoin : </h4></div>
                <select class="selectMats" name="idmatiere" onchange="updateUnite()">
                    <?php foreach($materiels as $materiel) { ?>
                        <option value="<?php echo $materiel['id'] ?>"><?php echo $materiel['nom_materiel'] ?></option>
                    <?php } ?>
                </select>
                <div class="titleMatiere"></div>
            </div>
            <div class="quantite">
                <h4 class="titleMatiere">Entrez la quantité :</h4>
                <input type="text" name="quantite" class="selectMats">
                <div class="titleMatiere"></div>
            </div>
            <div class="submitButton">
                <input type="submit" value="CONFIRMER">
            </div>
        </div>
    </form>