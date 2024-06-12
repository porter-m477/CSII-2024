CREATE TABLE `albums` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `album_title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `albums` VALUES (1,'Let it be','The Beatles',1970,'https://m.media-amazon.com/images/M/MV5BYzlkNzc0YzgtNzE0NC00ZjJkLWI1NDEtN2E4NjEwNTBkNWJkXkEyXkFqcGdeQXNvbG5vbXM@._V1_QL75_UX500_CR0,0,500,281_.jpg','Let It Be is the twelfth and final studio album by the English rock band the Beatles. It was released on 8 May 1970, almost a month after the groups public break-up, in tandem with the documentary of the same title. Concerned about recent friction within the band, Paul McCartney had conceived the project as an attempt to reinvigorate the group by returning to simpler rock n roll configurations.[2] Its rehearsals started at Twickenham Film Studios on 2 January 1969 as part of a planned television documentary showing the Beatles return to live performance.'),(2,'Abbey Road','The Beatles',1969,'https://beta.ctvnews.ca/content/dam/ctvnews/images/2019/8/8/1_2057917.jpg','Abbey Road is the eleventh studio album by the English rock band the Beatles, released on 26 September 1969. It is the last album the group recorded,[2] although Let It Be was the last album completed before the bands break-up in April 1970.[3] It was mostly recorded in April, July, and August 1969, and topped the record charts in both the United States and the United Kingdom. A double A-side single from the album, was released in October, which also topped the charts in the US.'),(3,'Yellow Submarine','The Beatles',1969,'https://us.rarevinyl.com/cdn/shop/products/the-beatles-yellow-submarine-songtrack-chinese-cd-album-cdlp-a3107-2-l-353961.jpg?v=1684811423&width=1280','Yellow Submarine is the tenth studio album by the English rock band the Beatles, released in January 1969. It is the soundtrack to the animated film of the same name, which premiered in London in July 1968. The album contains six songs by the Beatles, including four new songs and the previously released. The remainder of the album is a re-recording of selections from the films orchestral soundtrack by the bands producer, George Martin.'),(4,'Magical Mystery','The Beatles',1967,'https://express-images.franklymedia.com/3745/sites/10/2023/01/06080012/magicall-1-e1673020838952.jpg','Magical Mystery Tour is a record by the English rock band the Beatles that was released as a double EP in the United Kingdom and an LP in the United States. It includes the soundtrack to the 1967 television film of the same name. The EP was issued in the UK on 8 December 1967 on the Parlophone label, while the Capitol Records LP release in the US and Canada occurred on 27 November and features an additional five songs that were originally released as singles that year. In 1976, Parlophone released the eleven-track LP in the UK.'),(5,'Revolver','The Beatles',1966,'https://www.goldminemag.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk3NTc0NTI1MjEzMjIyNzA2/revolver_lp_sleeve.jpg','Revolver is the seventh studio album by the English rock band the Beatles. It was released on 5 August 1966, accompanied by the double A-side single. The album was the Beatles final recording project before their retirement as live performers and marked the groups most overt use of studio technology to date, building on the advances of their late 1965 release Rubber Soul. It has since become regarded as one of the greatest and most innovative albums in the history of popular music, with recognition centred on its range of musical styles, diverse sounds and lyrical content.'),(6,'Title album','New Artist',2020,'https://images.prismic.io/milanote/df7eeb83a07162b45ac2e882cac055de9411054a_cover.jpg','description');


CREATE TABLE `tracks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `track_title` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `albums_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tracks_albums_idx` (`albums_ID`),
  CONSTRAINT `fk_tracks_albums` FOREIGN KEY (`albums_ID`) REFERENCES `albums` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO `tracks` VALUES (1,'Let it be',1,'https://youtu.be/QDYfEBY9NM4?si=NGTzBfN2k3KEAuGO',1),(2,'Two of us',2,'https://youtu.be/cLQox8e9688?si=rfXOX2kMeW3bsmqq',1),(5,'Dig a pony',3,'https://youtu.be/90M60PzmxEE?si=33jOV0bFbuHD-63y',1),(6,'Across the universe',4,'https://youtu.be/90M60PzmxEE?si=PCHtyv9NUmDtHhQe',1),(7,'Come together',1,'https://youtu.be/oolpPmuK2I8?si=XiXiuSJR9QIezhWj',2),(8,'Something',2,'https://youtu.be/VWO3nEuWo4k?si=nZlmNloa-Jpm4AaH',2);
