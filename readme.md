## GENERAL
This is the expert.ai Symbolic project for Consumer Complaints Dataset generalization that is referred in this <a href=''>TDS article</a>.
Please notice that this project is composed of human made rules (found in the folder <i>rules</i>) that are made on top of a text analysis engine, that is not available here on github but will be automatically downloaded after opening the project folder in Studio IDE (see Download section below).
In the folder "package/libraries", you can find here the zip file "Consumer_complaints_generalization_20211215123126_scp" which contains the dataset used for this experiment. Please check the Donwload section below for instructions on how to correctly import it.

This project was developed for a generalization task: by looking at training documents, we built rules that are able to generalized and correctly predict Consumer Complaint class also on documents that are not similar to the ones in the training set. You can find one rule file for each Consumer Complaint class, and some other files used for developments.
We allowed a multi-label classification, since the rules project is made to catch any textual clue in the document for each class, meaning that some documents might be referring to more than one class at a time.

## DOWNLOAD
You can download this folder, and then open it using expert.ai Studio IDE.
If you don't already have the Studio plugin installed, please follow the <a href='https://docs.expert.ai/studio/latest/ide/?'>instructions</a>.
You can also find the installer in <a href='https://developer.expert.ai/'>expert.ai developers' portal</a>. Please notice that you will need to create an account to access the portal.

Once the project is opened and initialized, you can import the annotated dataset provided in the folder "package/libraries", under the name of "Consumer_complaints_generalization_20211215123126_scp". To do so, in Studio IDE, go in the menu called "Studio", select "Import Library" and select the dataset. The process should start automatically and fill the two folders "Test", where you'll find the documents, and "Ann" where you'll find the annotation - in BRAT format, compatible with Studio.

## TESTING
Once you downloaded the project and the dataset, as stated in the previous section, you can test the solution. To do so, bring your mouse on the "test" folder and now you can choose:
* You can right click on this folder and select "Test all documents" to test everything in the test folder (both test and training set);
* You can navigate to a specific subfolder (e.g. "test set") and right click on the icon and then select "Test all documents" to test only that subfolder.
