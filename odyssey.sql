-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2018 at 11:15 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odyssey`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `subject` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `email`, `num`, `msg`, `subject`) VALUES
(9, 'meghna qwer', 'qwe@gmail.com', '123456', ',vwe,celf[p3lfd[23l', 'qwe'),
(10, 'qwerty qwq', 'qwe@gmail.com', '123456', 'jijiojoijjp', 'qwe'),
(11, 'suhina', 'qwe@gmail.com', '123456', 'excellent collection', 'collection'),
(12, 'suhina', 'qwe@gmail.com', '123456', 'excellent collection', 'collection');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'mystery'),
(2, 'science fiction'),
(3, 'romance'),
(4, 'fantasy'),
(5, 'autobiography'),
(6, 'historic fiction'),
(7, 'non fiction');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `offdesc` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `offdesc`) VALUES
(5, '10%Off', '10%Off on shopping above Rs.300'),
(6, '20%Off ', '20%Off on non fiction');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `authour` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `title`, `path`, `authour`, `description`, `price`) VALUES
(1, 1, 'The Woman in White', 'images/wiw.png', 'Wilkie Collins', 'Matthew Sweet\'s introduction explores the phenomenon of Victorian \'sensation\' fiction, and discusses Wilkie Collins\'s biographical and societal influences. Included in this edition are appendices on theatrical adaptations of the novel and its serialisation history.', 250),
(2, 1, 'And Then There Were None', 'images/none.png', ' Agatha Christie', 'First, there were ten curious assortment of strangers summoned as weekend guests to a private island off the coast of Devon. Their host, an eccentric millionaire unknown to all of them, is nowhere to be found. All that the guests have in common is a wicked past they\'re unwilling to reveal and a secret that will seal their fate. For each has been marked for murder. One by one they fall prey. ', 299),
(3, 1, 'Gone Girl', 'images/gg.jpg', 'Gillian Flynn', 'Gone Girl is a novel written by author Gillian Flynn. It is written as a contemporary thriller novel and is first published in June 2012. The novel\'s core mystery stems from an uncertainty about the protagonist, Nick Dunne. Whether Nick killed his wife, Amy Dunne, is the suspense the novel is built up on. The novel is well received throughout the United States and other English-speaking nations.', 199),
(4, 1, 'Murder on the Orient Express', 'images/motoe.png', 'Agatha Christie', 'Murder on the Orient Express is a detective novel by British writer Agatha Christie featuring the Belgian detective Hercule Poirot. It was first published in the United Kingdom by the Collins Crime Club on 1 January 1934.', 399),
(5, 2, 'Frankenstein', 'images/frank.jpg', ' Mary Shelley ', 'Frankenstein; or, The Modern Prometheus is a novel written by English author Mary Shelley (1797-1851) that tells the story of Victor Frankenstein, a young scientist who creates a grotesque but sapient creature in an unorthodox scientific experiment. Shelley started writing the story when she was 18, and the first edition of the novel was published anonymously in London on 1 January 1818, when she was 20. Her name first appeared on the second edition, published in France in 1823. ', 499),
(6, 2, 'Stranger in a Strange Land', 'images/stranger.jpg', 'Robert A. Heinlein', 'Stranger in a Strange Land is a 1961 science fiction novel by American author Robert A. Heinlein. It tells the story of Valentine Michael Smith, a human who comes to Earth in early adulthood after being born on the planet Mars and raised by Martians. The novel explores his interaction with and eventual transformation of Terran culture. In 2012, the US Library of Congress named it one of 88 \"Books that Shaped America\".', 299),
(7, 2, 'I, Robot', 'images/robot.jpg', 'Isaac Asimov', 'I, Robot is a fixup of science fiction short stories or essays by American writer Isaac Asimov. The stories originally appeared in the American magazines Super Science Stories and Astounding Science Fiction between 1940 and 1950 and were then compiled into a book for stand-alone publication by Gnome Press in 1950, in an initial edition of 5,000 copies. The stories are woven together by a framing narrative in which the fictional Dr. Susan Calvin tells each story to a reporter .', 249),
(8, 3, 'The Notebook', 'images/notebook.jpg', 'Nicholas Sparks', 'This was Nicholas Sparks\' first published novel. It was the third written after The Passing and The Royal Murders, which he did not publish. He wrote it over a period of six months in 1994. Literary agent Theresa Park discovered Sparks by picking the book out of her agency\'s slush pile and reading it.', 299),
(9, 3, 'The Fault in Our Stars', 'images/fault.jpg', 'John Green and Rodrigo Corral', 'Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazel\'s story is about to be completely rewritten.', 399),
(10, 3, 'A Walk to Remember', 'images/walk.jpg', 'Nicholas Sparks', 'A Walk to Remember is a novel by American writer Nicholas Sparks, released in October 1999. The novel, set in 1958-1959 in Beaufort, North Carolina, is a story of two teenagers who fall in love with each other despite the disparity of their personalities. A Walk to Remember is adapted in the film of the same name. ', 249),
(11, 4, 'The Stand', 'images/stand.jpg', 'Stephen King', 'The Stand is a post-apocalyptic horror/fantasy novel by American author Stephen King. It expands upon the scenario of his earlier short story \"Night Surf\" and outlines the total breakdown of society after the accidental release of a strain of influenza that had been modified for biological warfare causes an apocalyptic pandemic which kills off the majority of the world\'s human population. ', 299),
(12, 4, 'The Princess and the Goblin', 'images/princess.jpg', 'George MacDonald', 'Anne Thaxter Eaton writes in A Critical History of Children\'s Literature that The Princess and the Goblin and its sequel \"quietly suggest in every incident ideas of courage and honor.\" Jeffrey Holdaway, in the New Zealand Art Monthly, said that both books start out as \"normal fairytales but slowly become stranger\", and that they contain layers of symbolism similar to that of Lewis Carroll\'s work.', 199),
(13, 4, 'Harry Potter and the Prisoner of Azkaban', 'images/harry.jpg', 'Novel by J. K. Rowling', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry. Along with friends Ronald Weasley and Hermione Granger, Harry investigates Sirius Black, an escaped prisoner from Azkaban who they believe is one of Lord Voldemort\'s old allies. ', 699),
(14, 4, 'Peter and Wendy', 'images/peter.png', 'James Matthew Barrie', 'Peter Pan; or, the Boy Who Wouldn\'t Grow Up or Peter and Wendy is J. M. Barrie\'s most famous work, in the form of a 1904 play and a 1911 novel. Both versions tell the story of Peter Pan, a mischievous yet innocent little boy who can fly, and has many adventures on the island of Neverland that is inhabited by mermaids, fairies, Native Americans and pirates. The Peter Pan stories also involve the characters Wendy Darling and her two brothers, Peter\'s fairy Tinker Bell.', 449),
(15, 5, 'The Bell Jar', 'images/bell.jpg', ' Sylvia Plath', 'The Bell Jar is the only novel written by the American writer and poet Sylvia Plath. Originally published under the pseudonym \"Victoria Lucas\" in 1963, the novel is semi-autobiographical, with the names of places and people changed. The book is often regarded as a romann clef because the protagonist\'s descent into mental illness parallels Plath\'s own experiences with what may have been clinical depression or bipolar II disorder. Plath died by suicide a month after its first UK publication', 239),
(16, 5, 'Night', 'images/night.jpg', 'Elie Wiesel', 'Night (1960) is a work by Elie Wiesel about his experience with his father in the Nazi German concentration camps at Auschwitz and Buchenwald in 1944-1945, at the height of the Holocaust toward the end of the Second World War. In just over 100 pages of sparse and fragmented narrative, Wiesel writes about the death of God and his own increasing disgust with humanity, reflected in the inversion of the parent-child relationship, as his father declines to a helpless state.', 499),
(17, 5, 'Dust Tracks on a Road', 'images/dust.jpg', 'Zora Neale Hurston', 'Dust Tracks on a Road is the 1942 autobiography of black American writer and anthropologist Zora Neale Hurston. ', 299),
(18, 4, 'Harry Potter and the Philosopher\'s Stone', 'images/harry2.jpg', 'J. K. Rowling', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to the Hogwarts School of Witchcraft and Wizardry.', 699),
(19, 4, 'Harry Potter and the Goblet of Fire', 'images/harry3.jpg', ' J. K. Rowling', 'Harry Potter and the Goblet of Fire is a fantasy book written by British author J. K. Rowling and the fourth novel in the Harry Potter series. It follows Harry Potter, a wizard in his fourth year at Hogwarts School of Witchcraft and Wizardry and the mystery surrounding the entry of Harry\'s name into the Triwizard Tournament, in which he is forced to compete. ', 699),
(20, 4, 'Harry Potter and the Half-Blood Prince', 'images/harry4.jpg', 'J. K. Rowling', 'Harry Potter and the Half-Blood Prince is a fantasy novel written by British author J. K. Rowling and the sixth and penultimate novel in the Harry Potter series. Set during protagonist Harry Potter\'s sixth year at Hogwarts, the novel explores the past of Harry\'s nemesis, Lord Voldemort, and Harry\'s preparations for the final battle against Voldemort alongside his headmaster and mentor Albus Dumbledore. ', 699),
(21, 1, 'The Girl with the Dragon Tattoo', 'images/tatoo.jpg', 'Stieg Larsson', 'The Girl with the Dragon Tattoo (original title in Swedish: Man som hatar kvinnor; in English: Men Who Hate Women) is a psychological thriller novel by Swedish author and journalist Stieg Larsson (1954-2004), which was published posthumously in 2005 to become an international bestseller. It is the first book of the Millennium series', 499),
(22, 1, 'The Adventures of Sherlock Holmes', 'images/sherlock.jpg', 'Arthur Conan Doyle', 'The Adventures of Sherlock Holmes is a collection of twelve short stories by Arthur Conan Doyle, featuring his fictional detective Sherlock Holmes. It was first published on 14 October 1892; the individual stories had been serialised in The Strand Magazine between July 1891 and June 1892. ', 399),
(23, 1, 'The Outsider', 'images/outside.jpg', 'Stephen King', 'The Outsider is a horror novel by American author Stephen King, published on May 22, 2018, by Scribner.', 239),
(24, 1, 'The Murder at the Vicarage', 'images/vicar.jpg', 'Agatha Christie', 'The Murder at the Vicarage is a work of detective fiction by British writer Agatha Christie, first published in the UK by the Collins Crime Club in October 1930 and in the US by Dodd, Mead and Company later in the same year.', 299),
(25, 2, 'The Time Machine', 'images/time.jpg', 'H. G. Wells', 'The Time Machine is a science fiction novella by H. G. Wells, published in 1895 and written as a frame narrative. The work is generally credited with the popularization of the concept of time travel by using a vehicle that allows an operator to travel purposely and selectively forwards or backwards in time. The term \"time machine\", coined by Wells, is now almost universally used to refer to such a vehicle', 199),
(26, 2, 'Neuromancer', 'images/neuro.jpg', 'William Gibson\r\n', 'The novel tells the near-future story of Case, a washed-up computer hacker hired by a mysterious employer for one last job against a powerful artificial intelligence. ', 299),
(27, 2, 'The Encyclopedia of Science Fiction', 'images/encyclo.jpg', 'John Clute and Peter Nicholls', 'The Encyclopedia of Science Fiction is an English language reference work on science fiction, first published in 1979. In October 2011, the third edition was made available for free online', 529),
(28, 2, 'The Hitchhiker\'s Guide to the Galaxy', 'images/the.jpg', 'Douglas Adams', 'The namesake of the novel is The Hitchhiker\'s Guide to the Galaxy, a fictional guide book for hitchhikers (inspired by the Hitch-hiker\'s Guide to Europe) written in the form of an encyclopedia. ', 299),
(29, 3, 'Pride and Prejudice', 'images/pride.jpg', ' Jane Austen', 'Pride and Prejudice is a romantic novel by Jane Austen, first published in 1813. The story charts the emotional development of the protagonist, Elizabeth Bennet, who learns the error of making hasty judgments and comes to appreciate the difference between the superficial and the essential. The comedy of the writing lies in the depiction of manners, education, marriage, and money during the British Regency period. ', 499),
(30, 3, 'Jane Eyre', 'images/jane.jpg', ' Charlotte Bronte', 'Primarily a bildungsroman, Jane Eyre follows the experiences of its eponymous heroine, including her growth to adulthood and her love for Mr. Rochester, the brooding master of Thornfield Hall. The novel revolutionized prose fiction in that the focus on Jane\'s moral and spiritual development is told through an intimate, first-person narrative, where actions and events are coloured by a psychological intensity. ', 399),
(31, 3, 'Wuthering Heights', 'images/wuth.jpg', 'Emily Bronte', 'Although Wuthering Heights is now a classic of English literature, contemporary reviews were deeply polarised; it was controversial because of its unusually stark depiction of mental and physical cruelty, and it challenged strict Victorian ideals of the day regarding religious hypocrisy, morality, social classes and gender inequality.', 349),
(32, 5, 'The Diary of a Young Girl', 'images/young.jpg', 'Anne Frank', 'The Diary of a Young Girl, also known as The Diary of Anne Frank, is a book of the writings from the Dutch language diary kept by Anne Frank while she was in hiding for two years with her family during the Nazi occupation of the Netherlands. The family was apprehended in 1944, and Anne Frank died of typhus in the Bergen-Belsen concentration camp in 1945.', 199),
(33, 5, 'I Know Why the Caged Bird Sings', 'images/bird.jpg', 'Maya Angelou', 'I Know Why the Caged Bird Sings is a 1969 autobiography describing the early years of American writer and poet Maya Angelou. The first in a seven-volume series, it is a coming-of-age story that illustrates how strength of character and a love of literature can help overcome racism and trauma. The book begins when three-year-old Maya and her older brother are sent to Stamps, Arkansas, to live with their grandmother and ends when Maya becomes a mother at the age of 16.', 299),
(34, 5, 'Surely You\'re Joking, Mr. Feynman!', 'images/feynman.png', 'Richard Feynman', 'The book, released in 1985, covers a variety of instances in Feynman\'s life. Some are lighthearted in tone, such as his fascination with safe-cracking, studying various languages, participating with groups of people who share different interests (such as biology or philosophy), and ventures into art and samba music. ', 399),
(35, 5, 'The Boy Who Harnessed the Wind', 'images/wind.jpg', 'Bryan Mealer and William Kamkwamba', 'William Kamkwamba was born in Malawi, a country where magic ruled and modern science was mystery. It was also a land withered by drought and hunger. But William had read about windmills, and he dreamed of building one that would bring to his small village a set of luxuries that only 2 percent of Malawians could enjoy: electricity and running water.', 399),
(36, 6, 'The Song of Achilles', 'images/song.png', 'Madeline Miller', 'This is a breathtakingly original rendering of the Trojan War - a devastating love story and a tale of gods and kings, immortal fame and the human heart.\'Mary Renault lives again! A ravishingly vivid and convincing version of one of the most legendary of love stories\' Emma Donoghue, author of number 1 bestseller, Room \'The Song of Achilles is at once a scholar\'s homage to The Iliad and startlingly original work of art by an incredibly talented new novelist. ', 299),
(37, 6, 'The Kite Runner', 'images/kite.jpg', 'Khaled Hosseini', 'The Kite Runner is the first novel by Afghan-American author Khaled Hosseini. Published in 2003 by Riverhead Books, it tells the story of Amir, a young boy from the Wazir Akbar Khan district of Kabul, whose closest friend is Hassan. The story is set against a backdrop of tumultuous events, from the fall of Afghanistan\'s monarchy through the Soviet military intervention, the exodus of refugees to Pakistan and the United States, and the rise of the Taliban regime. ', 349),
(38, 6, 'Salt to the Sea', 'images/salt.png', ' Ruta Sepetys', 'Salt to the Sea is a 2016 historical fiction young adult novel by Ruta Sepetys (book cover illustration and design by Matt Jones). It tells the story of four individuals in World War II who make their way to the ill-fated MV Wilhelm Gustloff. The story also touches on the disappearance of the Amber Room, a world-famous, ornately decorated chamber stolen by the Nazis that has never been recovered. ', 299),
(39, 6, 'The Scarlet Letter', 'images/scartlet.jpg', ' Nathaniel Hawthorne', 'Set in 17th-century Puritan Massachusetts Bay Colony, during the years 1642 to 1649, it tells the story of Hester Prynne, who conceives a daughter through an affair and struggles to create a new life of repentance and dignity. As she struggles to raise her rambunctious daughter, Pearl, on her own, the father of her unborn child is revealed and is shown to be experiencing severe guilt. Through the scorn and judgment of the citizens and Roger Chillingworth, the two decide to remain together. ', 399),
(40, 6, 'I, Claudius', 'images/clau.jpg', 'Robert Graves', 'I, Claudius (1934) is a novel by English writer Robert Graves, written in the form of an autobiography of the Roman Emperor Claudius. Accordingly, it includes the history of the Julio-Claudian Dynasty and the Roman Empire, from Julius Caesar\'s assassination in 44 BC to Caligula\'s assassination in 41 AD.', 239),
(41, 6, 'Gone with the Wind', 'images/gow.jpg', 'Margaret Mitchell', 'Gone with the Wind is a novel by American writer Margaret Mitchell, first published in 1936. The story is set in Clayton County and Atlanta, both in Georgia, during the American Civil War and Reconstruction Era. It depicts the struggles of young Scarlett O\'Hara, the spoiled daughter of a well-to-do plantation owner, who must use every means at her disposal to claw her way out of poverty following Sherman\'s destructive \"March to the Sea\". ', 499),
(42, 6, 'A Tale of Two Cities', 'images/tale.jpg', 'Charles Dickens', 'A Tale of Two Cities (1859) is a historical novel by Charles Dickens, set in London and Paris before and during the French Revolution. The novel tells the story of the French Doctor Manette, his 18-year-long imprisonment in the Bastille in Paris and his release to life in London with his daughter Lucie whom he had never met. The story is set against the conditions that led up to the French Revolution and the Reign of Terror. ', 499),
(43, 6, 'The Nightingale', 'images/nigh.png', 'Kristin Hannah', 'The Nightingale is a historical fiction novel, written by Kristin Hannah and published in 2015. It tells the story of two sisters in France during World War II, and their struggle to survive and resist the German occupation of France. It was inspired by the story of a Belgian woman, Andree de Jongh, who helped downed Allied pilots to escape Nazi territory.', 299),
(44, 7, 'Sapiens: A Brief History of Humankind ', 'images/sapiens.jpg', 'Yuval Noah Harari', 'Sapiens: A Brief History of Humankind is a book by Yuval Noah Harari first published in Hebrew in Israel in 2011, and in English in 2014. Harari cites Jared Diamond\'s Guns, Germs, and Steel (1997) as one of the greatest inspirations for the book by showing that it was possible to \"ask very big questions and answer them scientifically\".', 299),
(45, 7, 'A Walk in the Woods: Rediscovering America on the Appalachian Trail', 'images/woods.jpg', 'Bill Bryson', 'A Walk in the Woods: Rediscovering America on the Appalachian Trail is a 1998 autobiographical book by travel writer Bill Bryson, describing his attempt to walk the Appalachian Trail with his friend \"Stephen Katz\". The book is written in a humorous style, interspersed with more serious discussions of matters relating to the trail\'s history, and the surrounding sociology, ecology, trees, plants, animals and people. ', 299),
(46, 7, 'The Tipping Point', 'images/tipping.jpg', 'Malcolm Gladwell', 'The Tipping Point: How Little Things Can Make a Big Difference is the debut book by Malcolm Gladwell, first published by Little, Brown in 2000. Gladwell defines a tipping point as \"the moment of critical mass, the threshold, the boiling point\".The book seeks to explain and describe the \"mysterious\" sociological changes that mark everyday life. As Gladwell states: \"Ideas and products and messages and behaviors spread like viruses do\".', 329),
(47, 7, 'On the Origin of Species', 'images/origin.jpg', 'Charles Darwin', 'On the Origin of Species (or more completely, On the Origin of Species by Means of Natural Selection, or the Preservation of Favoured Races in the Struggle for Life), published on 24 November 1859, is a work of scientific literature by Charles Darwin which is considered to be the foundation of evolutionary biology. Darwin\'s book introduced the scientific theory that populations evolve over the course of generations through a process of natural selection. ', 549),
(48, 7, 'The Devil in the White City: Murder, Magic, and Madness at the Fair That Changed America', 'images/devil.jpg', 'Erik Larson', 'The book is based on real characters and events. It tells the story of the 1893 World\'s Colombian Exposition in 1893 in Chicago from the viewpoint of the designers, including Daniel Burnham, and also tells the story of H. H. Holmes, a criminal figure in that same time. ', 399),
(49, 7, 'Unbroken: A World War II Story of Survival, Resilience, and Redemption', 'images/unbroken.jpg', 'Laura Hillenbrand', 'Unbroken is a biography of World War II hero Louis Zamperini, a former Olympic track star who survived a plane crash in the Pacific theater, spent 47 days drifting on a raft, and then survived more than two and a half years as a prisoner of war in three brutal Japanese prisoner-of-war camps. ', 299),
(50, 7, 'Blink: The Power of Thinking Without Thinking', 'images/blink.jpg', 'Malcolm Gladwell', 'Blink: The Power of Thinking Without Thinking (2005) is Malcolm Gladwell\'s second book. It presents in popular science format research from psychology and behavioral economics on the adaptive unconscious: mental processes that work rapidly and automatically from relatively little information. It considers both the strengths of the adaptive unconscious, for example in expert judgment, and its pitfalls, such as stereotypes.', 399);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE IF NOT EXISTS `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `name`, `email`) VALUES
(7, 'meghna qwer', 'meghna976@gmail.com'),
(8, 'qwe', 'abc@gmail.com'),
(9, 'qwerty', 'ab@gmail.com'),
(10, 'qwerty qwq', 'ds@gmail.com'),
(11, 'qwerty 12', 'ew@gmail.com'),
(18, 'spp', 'sp@gmail.com'),
(19, 'qwerty 12', 'dsq@gmail.com'),
(20, 'qwertyuu', 'bn@gmail.com'),
(21, 'suhina', 'suhina@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
