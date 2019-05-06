# Java : Langage et écosystème

Projet fil rouge M2i : présentation sur le thème "Java : Langage et écosystème". Concevoir le plan avec un fichier XML (permet de créer des docs au format différents ayant le même contenu).

## Table des matières

1. [Références](#références)
2. [XML](#xml)
3. [XSL](#xsl)

## <a herf="références">Références</a>

Intro à XSLT sur <a href="https://openclassrooms.com/fr/courses/1766341-structurez-vos-donnees-avec-xml/1769236-introduction-a-xslt">OpenClassrooms</a>.

Utiliser Bootstrap pour mettre en forme du XML : <a href="https://github.com/acch/XML-to-bootstrap">projet GitHub</a> (le mec a mis en place une démo sur <a href="https://acch.github.io/XML-to-bootstrap/">ce lien</a>).

## <a href="xml">XML</a>

Similaire à HTML : on définit nos propres balises (noms et attributs) imbriquées les unes dans les autres.

Contient un élément racine dans lequel s'embriquent toutes les autres balises.

## <a href="xsl">XSL</a>

Toutes les balises doivent être préfixées par **xsl**.

## Technologies Java

### Java - EasyMock

**EasyMock** is an open-source testing framework for Java released under the Apache License. It is used for effective unit testing of JAVA applications for the purpose of Test-driven Development (TDD) or Behavior Driven Development (BDD).

Mocking is a way to test the functionality of a class in isolation. Mocking does not require a database connection or properties file read or file server read to test a functionality. Mock objects do the mocking of the real service. A mock object returns a dummy data corresponding to some dummy input passed to it.

*En programmation orientée objet, les mocks (simulacres ou mock object) sont des objets simulés qui reproduisent le comportement d'objets réels de manière contrôlée. Un programmeur crée un mock dans le but de tester le comportement d'autres objets, réels, mais liés à un objet inaccessible ou non implémenté. Ce dernier est alors remplacé par un mock.*

EasyMock uses Java Reflection in order to create mock objects for a given interface. Mock objects are nothing but proxy for actual implementations. Consider a case of Stock Service which returns the price details of a stock. During development, the actual stock service cannot be used to get real-time data. So we need a dummy implementation of the stock service. EasyMock can do the same very easily as its name suggests.

Benefits of EasyMock :
- No Handwriting – No need to write mock objects on your own.
- Refactoring Safe – Renaming interface method names or reordering parameters will not break the test code as Mocks are created at runtime.
- Return value support – Supports return values.
- Exception support – Supports exceptions.
- Order check support – Supports check on order of method calls.
- Annotation support – Supports creating mocks using annotation.



### Java - EJB

**Enterprise Java Beans** (EJB) is a development architecture for building highly scalable and robust enterprise level applications to be deployed on J2EE compliant Application Server such as JBOSS, Web Logic etc. EJB is an essential part of a J2EE platform. J2EE platform has component based architecture to provide multi-tiered, distributed and highly transactional features to enterprise level applications.

*Enterprise JavaBeans (EJB) est une architecture de composants logiciels côté serveur pour la plateforme de développement Java EE.*

*Cette architecture propose un cadre pour créer des composants distribués (c’est-à-dire déployés sur des serveurs distants) écrit en langage de programmation Java hébergés au sein d'un serveur applicatif permettant de représenter des données (EJB dit entité), de proposer des services avec ou sans conservation d'état entre les appels (EJB dit session), ou encore d'accomplir des tâches de manière asynchrone (EJB dit message). Tous les EJB peuvent évoluer dans un contexte transactionnel.*

*De la version 1.0 à la version 2.1, un EJB était accompagné d'un ou plusieurs fichiers de déploiement écrits en XML qui permettait au serveur applicatif de déployer correctement l'objet au sein d'un conteneur. C'était notamment dans ces fichiers de déploiement que le développeur avait la possibilité de préciser le cadre transactionnel dans lequel l'objet allait s'exécuter. Depuis la version 3.0, le modèle EJB utilise le principe d'annotation java (meta-données) pour spécifier toute la configuration et les propriétés transactionnelles de l'objet. Le fichier de code source de l'EJB se suffit à lui-même.*

*C'est le serveur applicatif qui est chargé de la création, la destruction, la passivation ou l'activation de ses composants en fonction des besoins. Le client via un appel RMI (ou une de ses dérivées) va rechercher un EJB par son nom logique JNDI et appeler une ou plusieurs méthodes de cet objet.*

EJB provides an architecture to develop and deploy component based enterprise applications considering robustness, high scalability, and high performance. An EJB application can be deployed on any of the application server compliant with the J2EE 1.3 standard specification.

Following are the important benefits of EJB :
- Simplified development of large-scale enterprise level application.
- Application Server/EJB container provides most of the system level services like transaction handling, logging, load balancing, persistence mechanism, exception handling, and so on. Developer has to focus only on business logic of the application.
- EJB container manages life cycle of EJB instances, thus developer needs not to worry about when to create/delete EJB objects.



### Comparaison et différences entre le script côté client et le script côté serveur

Le Web a toujours été basé sur un principe simple : tous les types de contenu sont fournis par les serveurs Web et peuvent être récupérés par les clients via HTTP ou FTP. Les clients sont des **navigateurs** dont les plus connus sont Mozilla Firefox ou Google Chrome. Ceux-ci peuvent être installés et utilisés sur le système de l’utilisateur. Les serveurs Web comme Apache et NGINX sont en revanche des **composants de projets Web** ; ils sont aussi installés et exécutés dans cet environnement et permettent au client respectif d’accéder au contenu.

Alors qu’un contenu **statique**, comme par exemple les éléments HTML classiques ou les images, est simplement et facilement transmis et affiché, le contenu **dynamique** lui, comme par exemple un wiki, une liste déroulante (drop-down list) ou une application Web, fonctionne uniquement à l’aide de **scripts**. Ils doivent être exécutés et interprétés avec un langage de script approprié, et peuvent être réalisés côté serveur ou côté client. C’est pour cette raison que l’on distingue le script côté serveur (server side scripting) du script côté client (client side scripting).

**Le script côté serveur** est une technique utilisée pour développer des sites Internet avec des éléments dynamiques et des applications Web. Elle est basée sur l’utilisation de scripts, qui fonctionnent sur le serveur Web en utilisant les langages de scripts appropriés lorsqu’un client demande le contenu correspondant. Le rôle des scripts est souvent de collecter les données appropriées à partir d’une base de données et de les intégrer dans le projet Web. L’utilisateur accède à eux via des pages HTML, où le code source des scripts est complètement masqué. L’utilisation de scripts côté serveur requiert que le client envoie plusieurs demandes au serveur Web pour fournir à l’utilisateur de nouvelles informations. Cela signifie une forte utilisation des capacités du serveur, qui affecte le temps de réponse du serveur Web, et d’autre part qu’une connexion existante au serveur soit indispensable pour l’utilisation du site Internet.

**Le script côté client** est également utilisée par les développeurs Web pour réaliser des projets avec un contenu dynamique. Contrairement à la variante côté serveur, les scripts programmés sont exécutés et traités par le client plutôt que par le serveur. Pour cela, il est nécessaire soit d’intégrer les scripts dans le document HTML ou XHTML, soit de les écrire dans un fichier séparé qui est associé au document. Si désormais l’utilisateur appelle une page Web ou une application avec un tel script côté client, le serveur Web envoie le document HTML ainsi que le script au navigateur qui exécute et présente le résultat final. Les scripts côté client peuvent également contenir des instructions concrètes pour le navigateur Web, comme déterminer comment il doit réagir aux actions de l’utilisateur, par exemple en cliquant sur un bouton. Souvent, le client n’a pas besoin de rétablir une connexion au serveur Web.



### Polymorphisme

Le polymorphisme veut dire que le même service, aussi appelé opération ou méthode, peut avoir un comportement différent selon les situations.

**Polymorphisme statique** (ou polymorphisme paramétrable) = surcharge de méthodes (nouvelle signature) :
- Plusieurs signatures pour une même méthode : on peut donner à une même méthode, plusieurs signatures pour implémenter des comportements différents selon les types des paramètres passés. La signature d'une méthode est composée du nom de celle ci, de sa portée, du type de donnée qu'elle renvoie et enfin du nombre et du type de ses paramètres. 
- Proposer le passage d'un nombre inconnu de paramètres : dans la signature d'une méthode , on peut préciser qu'il est possible de passer plus de 1 paramètre du même type en suffixant le type du paramètre avec « ... ». 

**Polymorphisme dynamique** (ou polymorphisme d'héritage) : redéfinir une méthode dans une sous-classe, on peut spécialiser le comportement d'une méthode. 



### Encapsulation

Les classes, les attributs et les méthodes bénéficient de niveaux d'accessibilité, qui indiquent dans quelles circonstances on peut accéder à ces éléments :
- private (accessible depuis la classe)
- par défaut (ibidem + depuis le package)
- protected (ibidem + depuis les sous-classes)
- public (accessible depuis TOUTES les classes)



### Modificateurs d'accès

La déclaration d'une classe, d'une méthode ou d'un membre peut être précédée par un modificateur d'accès. Un modificateur indique si les autres classes de l'application pourront accéder ou non à la classe/méthode/membre (qualifié par la suite d'« item ») :
- public : toutes les classes peuvent accéder à l'item ;
- protected : seules les classes dérivées et les classes du même package peuvent accéder à l'item ;
- private : l'item est seulement accessible depuis l'intérieur de la classe où il est défini ;
- par défaut : sans modificateur d'accès, seules les classes du même package peuvent accéder à l'item.

L'utilisation des modificateurs permet au programmeur de contrôler la visibilité des différents items et permet d'empêcher que des actions illégales soient effectuées sur les items.

**abstract** : le modificateur abstract indique qu'une classe ou méthode est abstraite.

**final** : ajouté devant un attribut, il le rend immuable, dès lors qu'il est initialisé (autrement dit, il n'est pas obligatoire de l'initialiser dès la déclaration, contrairement à d'autres langages). Pour les types primitifs, final fige la valeur, pour les objets, final fige la référence, et non la valeur de la référence (i.e. seule l'instanciation est figée).

Devant une variable locale (c.-à-d. dans une méthode), il a le même comportement que pour un attribut. Devant une méthode, il indique que cette méthode ne peut pas être modifiée dans une classe dérivée. Les méthodes static et private sont implicitement final. Devant une classe, il indique que cette classe ne peut pas avoir de sous-classe.

**static** : le modificateur static indique, pour une méthode, qu'elle peut être appelée sans instancier sa classe (syntaxe : Classe.methode()). Pour un attribut, qu'il s'agit d'un attribut de classe, et que sa valeur est donc partagée entre les différentes instances de sa classe. De plus, il est possible de déclarer dans une classe un bloc d'initialisation statique, qui est un bloc d'instruction précédé du modificateur static.

**synchronized** : le modificateur synchronized indique que la méthode ne peut être exécutée que par un thread à la fois. Le verrou ne s'active que pour l'objet sur lequel la méthode a été appelée (une même méthode synchronized peut être exécutée en même temps par deux threads différents sur deux objets différents).

**transient** : le modificateur transient indique que lors de la sérialisation de l'objet, cet attribut n'est pas sérialisé et donc il est ignoré. Cela signifie que lorsque l'on désérialise l'objet, l'attribut portant le modificateur transient n'est pas défini dans l'objet désérialisé. Il s'agit en général d'attributs qui peuvent être recalculés à partir des autres attributs de l'objet.

**native** : ce modificateur permet d'indiquer que cet item est défini dans une bibliothèque externe écrite dans un autre langage de programmation, utilisant l'API JNI.

**strictfp** : pour une méthode, une classe ou une interface, le modificateur strictfp (abréviation de strict floating point) force la JVM à évaluer les opérations à virgules flottantes (sur les double et float) conformément à la spécification Java, c'est-à-dire de la gauche vers la droite. Cela permet d'avoir un comportement identique d'une JVM à une autre et d'éviter certains dépassements de valeur limite pour les résultats intermédiaires.

**volatile** : pour une variable, le modificateur volatile force la JVM, avant et après chaque utilisation de la variable, à la rafraîchir à partir de la mémoire principale au lieu d'utiliser un cache local. Cela permet de synchroniser la valeur de la variable entre plusieurs threads. 



### Couplage

Le couplage est une métrique indiquant le niveau d'interaction entre deux ou plusieurs **composants logiciels** (*fonctions*, *modules*, *objets* ou *applications*). Deux composants sont dits couplés s'ils échangent de l'information.

**Couplage faible** = les composants échangent peu d'informations (une bonne architecture logicielle nécessite le couplage le plus faible possible).

**Couplage fort** =  les composants échangent beaucoup d'informations. Les composants perdent leur autonomie. On peut difficilement remplacer un composant par un autre. Les structures fonctionnant avec du couplage fort sont donc peu souples et peu ouvertes.



### Persistance

La gestion de la persistance des données (en anglais : persistence) et parfois des états d'un programme réfère au mécanisme responsable de la sauvegarde et de la restauration des données. **Ces mécanismes font en sorte qu'un programme puisse se terminer sans que ses données et son état d'exécution ne soient perdus**.

Ces informations de reprise peuvent être enregistrées sur disque, éventuellement sur un serveur distant (un serveur de bases de données relationnelles, par exemple).

Du fait de la différence de modèles entre les bases de données et les langages de programmation (notamment les langages objet) la notion de correspondance entre modèles (en anglais : mapping) est centrale.
