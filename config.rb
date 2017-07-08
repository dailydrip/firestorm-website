require 'font-awesome-middleman'

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do

  def roadmap_messages
    [
      roadmap_message("July 10, 2017", "1.0.0-rc1 released."),
      roadmap_message("April 26, 2017", "First <a href='https://www.kickstarter.com/projects/1003377429/firestorm-an-open-source-forum-in-phoenix-from-eli/posts/1869930'>alpha release announced</a>."),
      roadmap_message("March - April, 2017", "Lots of work went into building the first prototype and beginning to dogfood."),
      roadmap_message("February 13, 2017", "<a href='https://www.kickstarter.com/projects/1003377429/firestorm-an-open-source-forum-in-phoenix-from-eli/posts/1806748'>Design assets shared</a> and <a href='https://www.dailydrip.com/topics/elixir'>first 10 free Elixir episodes completed.</a>"),
      roadmap_message("January 28, 2017", "<a href='https://www.kickstarter.com/projects/1003377429/firestorm-an-open-source-forum-in-phoenix-from-eli/posts/1781464'>Design meetings have been ongoing for four weeks</a>"),
      roadmap_message("December 23, 2016", "Successfully raised $22,186 with 338 backers."),
      roadmap_message("November 23, 2016", "The Firestorm started brewing on Kickstarter.")
    ]
  end

  def markdown(body)
    Kramdown::Document.new(body).to_html
  end

  def patrons
    [
      ["Kevin ANATOLE", "[ [GitHub](https://www.github.com/kevin-DL) ]"],
      ["Trevoke", "[ [GitHub](https://www.github.com/trevoke) ] [ [Twitter](https://www.twitter.com/trevoke) ] [ [Website](http://blog.trevoke.net) ]"],
      ["Shamail Saidi", "[ [GitHub](https://www.github.com/Shamail) ] [ [Twitter](https://www.twitter.com/shamail_s) ]"],
      ["Tan Yeong Sheng", "[ [GitHub](https://www.github.com/yeongsheng-tan) ] [ [Twitter](https://www.twitter.com/yeongsheng) ]"],
      ["Michael Klett", "[ [GitHub](https://www.github.com/moklett) ] [ [Twitter](https://www.twitter.com/moklett) ]"],
      ["Nick McGinness", "[ [GitHub](https://www.github.com/NickMcG) ]"],
      ["John Berryman", "[ [GitHub](https://www.github.com/JnBrymn) ] [ [Twitter](https://www.twitter.com/JnBrymn) ] [ [Website](http://thoughtbox.solutions/blog/2016/11/26/consultants-and-cowboys-dont-need-unit-tests) ]"],
      ["Sergey Yanovitsky", ""],
      ["rich johnson", "[ [GitHub](https://www.github.com/shaolingeek) ] [ [Twitter](https://www.twitter.com/shaolingeek) ] [ [Website](http://shaolingeek.io) ]"],
      ["Ian Mackenzie", "[ [GitHub](https://www.github.com/ianmackenzie) ]"],
      ["Muhammad Syafiq Faiz", "[ [GitHub](https://www.github.com/syafiqfaiz) ] [ [Website](http://syafiqfaiz.github.io) ]"],
      ["Martin Vrkljan", "[ [GitHub](https://www.github.com/mvrkljan) ] [ [Twitter](https://www.twitter.com/mwrks) ] [ [Website](http://www.inqui.io) ]"],
      ["Oliver Searle-Barnes", "[ [GitHub](https://www.github.com/opsb) ] [ [Twitter](https://www.twitter.com/ollysb) ] [ [Website](http://opsb.co.uk) ]"],
      ["Kristian Rasmussen", "[ [GitHub](https://www.github.com/Iamkristian) ] [ [Twitter](https://www.twitter.com/Iamkristian) ] [ [Website](http://Krx.io) ]"],
      ["Vadim Golub", "[ [GitHub](https://www.github.com/vdmgolub) ] [ [Twitter](https://www.twitter.com/vdmgolub) ]"],
      ["David Gomez", "[ [GitHub](https://www.github.com/davgomgar) ]"],
      ["Yoann LE TOUCHE", ""],
      ["Spiros Gerokostas", "[ [GitHub](https://www.github.com/sger) ] [ [Twitter](https://www.twitter.com/sger) ] [ [Website](http://www.spirosgerokostas.com) ]"],
      ["Ben Damman", "[ [GitHub](https://www.github.com/typesend) ] [ [Twitter](https://www.twitter.com/typesend) ]"],
      ["San Diego Elixir / Erlang", "[ [GitHub](https://www.github.com/sdelixir) ] [ [Twitter](https://www.twitter.com/sdelixir) ] [ [Website](http://sdelixir.com) ]"],
      ["David Bernheisel", "[ [GitHub](https://www.github.com/dbernheisel) ] [ [Twitter](https://www.twitter.com/bernheisel) ] [ [Website](http://bernheisel.com) ]"],
      ["Tito Pandu Brahmanto", "[ [GitHub](https://www.github.com/titopandub) ] [ [Twitter](https://www.twitter.com/tito_pandu) ] [ [Website](http://tito.pandubrahmanto.com) ]"],
      ["Nick Brandaleone", "[ [GitHub](https://www.github.com/nbrandaleone) ]"],
      ["Nicholas Orr", "[ [GitHub](https://www.github.com/SoreGums) ] [ [Twitter](https://www.twitter.com/SoreGums) ] [ [Website](http://nicholasorr.com) ]"],
      ["Tjaco Oostdijk", "[ [GitHub](https://www.github.com/drumusician) ] [ [Twitter](https://www.twitter.com/drumusician) ] [ [Website](http://drumusician.com) ]"],
      ["Kai Mies", "[ [GitHub](https://www.github.com/kaimies) ] [ [Twitter](https://www.twitter.com/kai_mies) ] [ [Website](https://edgecube.de) ]"],
      ["Esteban Pastorino", "[ [GitHub](https://www.github.com/kitop) ] [ [Twitter](https://www.twitter.com/kitopastorino) ] [ [Website](http://Estebanpastorino.com) ]"],
      ["Pedro Medeiros", "[ [GitHub](https://www.github.com/pedrosnk) ] [ [Twitter](https://www.twitter.com/pesnk) ] [ [Website](http://pemedeiros.com) ]"],
      ["Mike Ratliff", "[ [GitHub](https://www.github.com/Mratliff) ] [ [Twitter](https://www.twitter.com/mikeratliff) ] [ [Website](http://www.enbala.com) ]"],
      ["Alex Filatov", "[ [GitHub](https://www.github.com/alexfilatov) ] [ [Twitter](https://www.twitter.com/alexfilatov) ] [ [Website](http://www.AlexFilatov.com) ]"],
      ["Matthew Machuga", "[ [GitHub](https://www.github.com/machuga) ] [ [Twitter](https://www.twitter.com/machuga) ] [ [Website](http://matthewmachuga.com) ]"],
      ["Jim Speakman", "[ [GitHub](https://www.github.com/fixedgigha) ] [ [Twitter](https://www.twitter.com/silentemission) ]"],
      ["Walther H Diechmann", "[ [GitHub](https://www.github.com/wdiechmann) ] [ [Twitter](https://www.twitter.com/wdiechmann) ] [ [Website](http://alco.dk) ]"],
      ["Wiebe-Marten Wijnja", "[ [GitHub](https://www.github.com/Qqwy) ] [ [Twitter](https://www.twitter.com/wiebemarten) ] [ [Website](http://wmcode.nl) ]"],
      ["Liz Vanderkloot", "[ [GitHub](https://www.github.com/lizvdk) ] [ [Twitter](https://www.twitter.com/lizvdk) ] [ [Website](http://lizvdk.com) ]"],
      ["Ventsislav Nikolov", "[ [GitHub](https://www.github.com/ventsislaf) ] [ [Twitter](https://www.twitter.com/ventsislaf) ]"],
      ["Max Trense", "[ [GitHub](https://www.github.com/mtrense) ] [ [Twitter](https://www.twitter.com/mtrense) ]"],
      ["Sean Clayton", "[ [GitHub](https://www.github.com/sean-clayton) ] [ [Twitter](https://www.twitter.com/seanybingbong) ]"],
      ["Uģis Ozols", "[ [GitHub](https://www.github.com/ugisozols) ] [ [Twitter](https://www.twitter.com/ugisozols) ] [ [Website](http://ugisozols.com) ]"],
      ["Caleb Land", "[ [GitHub](https://www.github.com/caleb) ] [ [Twitter](https://www.twitter.com/caleb_land) ] [ [Website](http://caleb.fm) ]"],
      ["Samuel Frederick", ""],
      ["Josh Cohen", "[ [GitHub](https://www.github.com/j127) ] [ [Twitter](https://www.twitter.com/joshhostels) ] [ [Website](http://artofmemory.com/) ]"],
      ["Bing Han", "[ [GitHub](https://www.github.com/tony612) ] [ [Twitter](https://www.twitter.com/tony612_han) ] [ [Website](http://tony612.com) ]"],
      ["Rob", "[ [GitHub](https://www.github.com/robpark) ] [ [Twitter](https://www.twitter.com/robpark) ]"],
      ["Nate Vick", "[ [GitHub](https://www.github.com/nvick) ] [ [Twitter](https://www.twitter.com/natron99 ) ] [ [Website](http://natevick.com) ]"],
      ["Andy Webster", ""],
      ["Don L", ""],
      ["Pete Bevin", "[ [GitHub](https://www.github.com/pbevin) ] [ [Twitter](https://www.twitter.com/pbevin) ] [ [Website](http://www.petebevin.com/) ]"],
      ["Chip", "[ [GitHub](https://www.github.com/ChipCoons) ] [ [Website](http://greenwavesoftware.com) ]"],
      ["Eric Workman", "[ [GitHub](https://www.github.com/ericworkman) ]"],
      ["Ross Kaffenberger ", "[ [GitHub](https://www.github.com/rossta ) ] [ [Twitter](https://www.twitter.com/rossta ) ] [ [Website](https://rossta.net) ]"],
      ["Gary Hahn", ""],
      ["David G. Chaves", "[ [GitHub](https://www.github.com/davidgchaves) ] [ [Twitter](https://www.twitter.com/davidgchaves) ]"],
      ["Layla S.", ""],
      ["Kayle Paustian", "[ [GitHub](https://www.github.com/Silentagony) ] [ [Twitter](https://www.twitter.com/Claritycohq) ] [ [Website](http://www.clarityapp.co) ]"],
      ["Emerald Kingdom Greenhouse", "[ [Website](http://www.emeraldkingdomgreenhouse.com) ]"],
      ["John Kaczmarek", "[ [GitHub](https://www.github.com/johnkacz) ] [ [Twitter](https://www.twitter.com/johnkacz) ]"],
      ["Dennis Palmer", "[ [GitHub](https://www.github.com/CoderDennis) ] [ [Twitter](https://www.twitter.com/CoderDennis) ] [ [Website](http://blog.dennispalmer.com) ]"],
      ["enilsen16", "[ [GitHub](https://www.github.com/enilsen16) ]"],
      ["Yinghai Zhao", "[ [GitHub](https://www.github.com/hisea) ] [ [Twitter](https://www.twitter.com/zyinghai) ] [ [Website](http://hisea.me) ]"],
      ["Alexander Quine", "[ [GitHub](https://www.github.com/alxndr) ] [ [Website](http://eleven-twelve.net) ]"],
      ["Ethan Sherbondy", "[ [GitHub](https://www.github.com/sherbondy) ] [ [Twitter](https://www.twitter.com/sherbondy) ]"],
      ["Jonas Beckman", "Kami Development [ [GitHub](https://www.github.com/kamidev) ] [ [Twitter](https://www.twitter.com/jonasbeckman) ]"],
      ["Tjshipe", "[ [GitHub](https://www.github.com/Tjshipe) ]"],
      ["Bruce Pomeroy", "[ [GitHub](https://www.github.com/brucepom) ] [ [Website](http://brucepomeroy.com) ]"],
      ["Juraj Hlista", "[ [GitHub](https://www.github.com/jur0) ]"],
      ["Brandon Blaylock", "[ [GitHub](https://www.github.com/baroquon) ] [ [Twitter](https://www.twitter.com/baroquon) ]"],
      ["Elixir Forum", "[ [Twitter](https://www.twitter.com/elixirforum) ] [ [Website](https://elixirforum.com) ]"],
      ["Sebastian Losch", "[ [GitHub](https://www.github.com/sloschi) ] [ [Twitter](https://www.twitter.com/Loschi42) ] [ [Website](http://cap3.de) ]"],
      ["Jeremy D. Frens", "[ [GitHub](https://www.github.com/jdfrens) ] [ [Twitter](https://www.twitter.com/jdfrens) ] [ [Website](http://www.norecess.org) ]"],
      ["Andy Lima", ""],
      ["Redmar Kerkhoff", "[ [GitHub](https://www.github.com/redmar) ] [ [Twitter](https://www.twitter.com/rjkerkhoff) ] [ [Website](http://www.creativecode.nl) ]"],
      ["Johan Wärlander", "[ [GitHub](https://www.github.com/jwarlander) ] [ [Twitter](https://www.twitter.com/jwarlander) ] [ [Website](https://blog.johanwarlander.com) ]"],
      ["Larry Lv", "[ [GitHub](https://www.github.com/larrylv) ] [ [Twitter](https://www.twitter.com/larrylv) ] [ [Website](http://larrylv.com/) ]"],
      ["Agusti Fernandez", "[ [GitHub](https://www.github.com/agustif) ]"],
      ["Ryan B. Harvey", "[ [GitHub](https://www.github.com/nihonjinrxs) ] [ [Twitter](https://www.twitter.com/CodeAndData) ] [ [Website](http://datascientist.guru) ]"],
      ["Steven Martin", "[ [GitHub](https://www.github.com/Slowbad) ] [ [Twitter](https://www.twitter.com/novicks) ] [ [Website](http://stevenmartin.io) ]"],
      ["Jeramy Singleton ", "[ [GitHub](https://www.github.com/JeramyRR) ] [ [Twitter](https://www.twitter.com/jeramyRR) ]"],
      ["Bryan Bryce", "[ [GitHub](https://www.github.com/BryanJBryce) ] [ [Twitter](https://www.twitter.com/BryanJBryce) ] [ [Website](http://BryceLabs.com) ]"],
      ["Robert Pearce", "[ [GitHub](https://www.github.com/rpearce) ] [ [Twitter](https://www.twitter.com/RobertWPearce) ] [ [Website](http://robertwpearce.com) ]"],
      ["Max Holzheu", "[ [GitHub](https://www.github.com/maxcodes) ] [ [Twitter](https://www.twitter.com/maxholzheu) ] [ [Website](http://medium.com/@maxholzheu) ]"],
      ["Setras LLC", "[ [GitHub](https://www.github.com/setras) ]"],
      ["Paweł Dawczak", "[ [GitHub](https://www.github.com/pdawczak) ] [ [Twitter](https://www.twitter.com/pawel_dawczak) ]"],
      ["Tianyi Wang", "[ [GitHub](https://www.github.com/3quarterstack) ] [ [Twitter](https://www.twitter.com/3quarterstack) ] [ [Website](https://www.stackshuttle.com) ]"],
      ["Mark Holmes", "[ [GitHub](https://www.github.com/markholmes) ] [ [Twitter](https://www.twitter.com/mrkhlm) ]"],
      ["Praveen Perera", "[ [GitHub](https://www.github.com/praveenperera) ] [ [Twitter](https://www.twitter.com/praveenperera) ] [ [Website](https://praveenperera.com) ]"],
      ["Ben Olive", "[ [GitHub](https://www.github.com/Sionide21) ]"],
      ["ElixirConf", "[ [Twitter](https://www.twitter.com/ElixirConf) ] [ [Website](https://ElixirConf.com) ]"],
      ["Maximiliano Molina", ""],
      ["Chris Paul", "[ [GitHub](https://www.github.com/cmpaul) ] [ [Twitter](https://www.twitter.com/idiosynchris) ] [ [Website](http://hakuna-automata.com) ]"],
      ["Felipe Gasparini", ""],
      ["John Mark Untalan", "[ [GitHub](https://www.github.com/jmunts) ] [ [Twitter](https://www.twitter.com/jmunts) ] [ [Website](http://johnmarkuntalan.com) ]"],
      ["Andrew O'Brien", ""],
      ["Tan Jay Jun", "[ [GitHub](https://www.github.com/jayjun) ]"],
      ["Haak Saxberg", "[ [GitHub](https://www.github.com/haaksmash) ] [ [Twitter](https://www.twitter.com/haaksmash) ] [ [Website](http://haaksmash.com) ]"],
      ["Adam Gamble", "[ [GitHub](https://www.github.com/adamgamble) ] [ [Twitter](https://www.twitter.com/adamgamble) ]"],
      ["Dima Sharov", ""],
      ["Cucufato", ""],
      ["Mark Ryall", "[ [GitHub](https://www.github.com/markryall) ] [ [Twitter](https://www.twitter.com/markryall) ] [ [Website](http://mark.ryall.name) ]"],
      ["Samnang Chhun", "[ [GitHub](https://www.github.com/samnang) ] [ [Twitter](https://www.twitter.com/samnangchhun) ] [ [Website](http://samnang.me/) ]"],
      ["Kamil Paszkowski", "[ [GitHub](https://www.github.com/kamil89) ] [ [Twitter](https://www.twitter.com/kamil89p) ]"],
      ["Erich Kaderka", "[ [GitHub](https://www.github.com/erich) ] [ [Twitter](https://www.twitter.com/kaderka) ]"],
      ["Artur Pañach", "[ [GitHub](https://www.github.com/arturictus) ] [ [Twitter](https://www.twitter.com/arturictus) ]"],
      ["daktyr", "[ [GitHub](https://www.github.com/daktyr) ] [ [Twitter](https://www.twitter.com/daktyr) ]"],
      ["Pedro Assumpcao", "[ [GitHub](https://www.github.com/pedroassumpcao) ] [ [Twitter](https://www.twitter.com/pedroassumpcao) ] [ [Website](https://pedroassumpcao.ghost.io) ]"],
      ["RomanK", ""],
      ["Jody Albritton", "[ [GitHub](https://www.github.com/jodyalbritton) ] [ [Twitter](https://www.twitter.com/jodyalbritton) ] [ [Website](http://jodyalbritton.com) ]"],
      ["Martin Volerich", "[ [GitHub](https://www.github.com/TheVole) ] [ [Twitter](https://www.twitter.com/TheVole) ] [ [Website](http://photos.volerich.com) ]"],
      ["Carlos Mendonça", "[ [GitHub](https://www.github.com/CarlosMendonca) ] [ [Twitter](https://www.twitter.com/chemendonca) ]"],
      ["Jean-Michel Garnier", "[ [GitHub](https://www.github.com/jmgarnier) ] [ [Twitter](https://www.twitter.com/jmgarnier_) ]"],
      ["Zachary Harris", "[ [GitHub](https://www.github.com/z-a-h) ] [ [Twitter](https://www.twitter.com/z_a_h_) ] [ [Website](http://zharr.is) ]"],
      ["Walter Seme", "[ [GitHub](https://www.github.com/wseme) ]"],
      ["Sebastian Gębski", "[ [GitHub](https://www.github.com/liveweird) ] [ [Twitter](https://www.twitter.com/liveweird) ] [ [Website](https://no-kill-switch.ghost.io/) ]"],
      ["Max Sharples", "[ [GitHub](https://www.github.com/msharp) ] [ [Twitter](https://www.twitter.com/maxsharples) ]"],
      ["Matt Ruzicka", "[ [Twitter](https://www.twitter.com/mattruzicka) ]"],
      ["Mark Wilbur", "[ [Website](https://toshuo.com) ]"],
      ["Frank Taylor", ""],
      ["Dan Moran", "[ [GitHub](https://www.github.com/fishbelly) ]"],
      ["Rogelio Castillo", "[ [GitHub](https://www.github.com/rogelio2k) ] [ [Twitter](https://www.twitter.com/rogelio2k) ] [ [Website](http://rogeliocastillo.com) ]"],
      ["Walter Beller-Morales", "[ [GitHub](https://www.github.com/walterbm) ] [ [Website](http://walterbellermoral.es/) ]"],
      ["Mark Robinson", "[ [GitHub](https://www.github.com/storm255) ]"],
      ["Paul Zenden", ""],
      ["UpptecOn AB", "[ [GitHub](https://www.github.com/Upptec) ] [ [Website](http://upptec.se) ]"],
      ["Exef", "[ [GitHub](https://www.github.com/Exef) ] [ [Twitter](https://www.twitter.com/fmalachowic) ]"],
      ["Michael Egli", "[ [GitHub](https://www.github.com/eglimi) ] [ [Website](http://www.bitmatch.ch) ]"],
      ["Jakub Jasiulewicz", "[ [GitHub](https://www.github.com/up2jj) ] [ [Twitter](https://www.twitter.com/up2jj) ]"],
      ["Lyuben Petrov", "[ [GitHub](https://www.github.com/agit0) ] [ [Twitter](https://www.twitter.com/LyubenP) ]"],
      ["Tom Stones", "[ [GitHub](https://www.github.com/stones) ] [ [Website](http://www.tomstones.com.au) ]"],
      ["Tomasz Tomczyk", "[ [GitHub](https://www.github.com/tomasz-tomczyk) ] [ [Twitter](https://www.twitter.com/tomasztomczyk) ] [ [Website](http://tomasztomczyk.com/) ]"],
      ["Erlang Solutions", "[ [GitHub](https://www.github.com/@esl) ] [ [Twitter](https://www.twitter.com/ErlangSolutions) ] [ [Website](https://www.erlang-solutions.com) ]"],
      ["IJ", "[ [GitHub](https://www.github.com/ij@internet2.edu) ] [ [Website](https://www.internet2.edu) ]"],
      ["Mark Goody", "[ [GitHub](https://www.github.com/marramgrass) ] [ [Twitter](https://www.twitter.com/marramgrass) ] [ [Website](http://markgoody.ie/) ]"],
      ["Konstantin Kudryashov", "[ [GitHub](https://www.github.com/everzet) ] [ [Twitter](https://www.twitter.com/everzet) ]"],
      ["Derek O'Connell", "[ [GitHub](https://www.github.com/dmoco) ]"],
      ["Kosmas Chatzimichalis", "[ [GitHub](https://www.github.com/Kosmas) ] [ [Twitter](https://www.twitter.com/Kosmas7) ] [ [Website](https://42.mach7x.com) ]"],
      ["Lance J Johnson", ""],
      ["Jamie", "[ [GitHub](https://www.github.com/jwright) ] [ [Twitter](https://www.twitter.com/jwright) ] [ [Website](http://tatsu.io) ]"],
      ["Brian Lawrence", "[ [GitHub](https://www.github.com/brianlawrence2) ] [ [Twitter](https://www.twitter.com/importantbrian) ]"],
      ["Andy Arminio @5thWall", "[ [GitHub](https://www.github.com/5thWall) ] [ [Twitter](https://www.twitter.com/5thWall) ]"],
      ["Fred Yankowski", "[ [GitHub](https://www.github.com/fredcy) ]"],
      ["Steven Wu", ""],
      ["Bjørn Madsen", "[ [GitHub](https://www.github.com/aeons) ] [ [Twitter](https://www.twitter.com/bjoernmadsen) ]"],
      ["Karmen Blake", "[ [GitHub](https://www.github.com/kblake) ] [ [Twitter](https://www.twitter.com/kblake) ] [ [Website](http://blog.dudeblake.com) ]"],
      ["Yes", "[ [GitHub](https://www.github.com/vjousse) ] [ [Twitter](https://www.twitter.com/vjousse) ] [ [Website](http://vincent.jousse.org) ]"],
      ["Simon Prévost", "[ [GitHub](https://www.github.com/simonprev) ] [ [Twitter](https://www.twitter.com/simonprev) ] [ [Website](http://simonprevost.com) ]"],
      ["Jonathan Mundy", "[ [GitHub](https://www.github.com/jonathanmundy) ] [ [Twitter](https://www.twitter.com/jonathanmundy) ]"],
      ["Bruno Dusausoy", "[ [GitHub](https://www.github.com/bdusauso) ] [ [Twitter](https://www.twitter.com/bdusauso) ] [ [Website](http://blog.codinsanity.be/) ]"],
      ["Ferran Selles", "[ [GitHub](https://www.github.com/ferranselles) ]"],
      ["Loh Wei Lih", "[ [GitHub](https://www.github.com/willieLOH) ] [ [Twitter](https://www.twitter.com/willie_loh) ]"],
      ["Andrei Sebastian Cîmpean", "[ [GitHub](https://www.github.com/andreisebastianc) ] [ [Twitter](https://www.twitter.com/Andrei_Cimpean) ] [ [Website](http://andreime.com) ]"],
      ["Locly", "[ [GitHub](https://www.github.com/locly) ] [ [Twitter](https://www.twitter.com/locly) ] [ [Website](https://locly.com) ]"],
      ["Jack Micklethwaite", "[ [GitHub](https://www.github.com/jamick) ]"],
      ["he9lin", "[ [GitHub](https://www.github.com/he9lin) ] [ [Twitter](https://www.twitter.com/he9lin) ]"],
      ["Victoria Wagman", "[ [Twitter](https://www.twitter.com/victoriawagman) ] [ [Website](http://victoriawagman.com) ]"],
      ["Sneezing Sleazing", ""],
      ["Jean-Luc Geering", "[ [GitHub](https://www.github.com/jlgeering) ] [ [Twitter](https://www.twitter.com/jlgeering) ] [ [Website](https://www.ufirstgroup.com/) ]"],
      ["manuscrypt", "[ [GitHub](https://www.github.com/manuscrypt) ]"],
      ["Chae Cramb", "[ [GitHub](https://www.github.com/chaecramb) ] [ [Twitter](https://www.twitter.com/ChaeCramb) ]"],
      ["Udo", ""],
      ["Dustin", "[ [GitHub](https://www.github.com/dmccraw) ]"],
      ["Fergus Meiklejohn", "[ [Twitter](https://www.twitter.com/airuyi) ]"],
      ["Patrik Stenmark", ""],
      ["John Dowd", ""],
      ["Ben Olive", "[ [GitHub](https://www.github.com/Sionide21) ] [ [Twitter](https://www.twitter.com/Sionide21) ]"],
      ["Tom Brukner", "[ [GitHub](https://www.github.com/xbrukner) ]"],
      ["Wendy Smoak", "[ [GitHub](https://www.github.com/wsmoak) ] [ [Twitter](https://www.twitter.com/wsmoak) ] [ [Website](http://wsmoak.net) ]"],
      ["Marcelo De Polli", "[ [GitHub](https://www.github.com/mdepolli) ] [ [Twitter](https://www.twitter.com/mdepolli) ]"],
      ["Dirk Johnson", ""]
    ]
  end

  def patrons_of_great_fame
    [
      ["Paul Otto", "[ [GitHub](https://www.github.com/potto007) ] [ [Website](https://www.ottoops.com) ]"],
      ["Barnabas Jovanovics", ""],
      ["Keith Gaddis", "[ [GitHub](https://www.github.com/karmajunkie) ] [ [Twitter](https://www.twitter.com/karmajunkie) ] [ [Website](http://karmajunkie.com) ]"],
      ["José Ney Guerrero", "[ [GitHub](https://www.github.com/neydroid) ] [ [Twitter](https://www.twitter.com/neydroid) ] [ [Website](http://www.dak42.com) ]"],
      ["Taylor Dolezal", "[ [GitHub](https://www.github.com/Onlydole) ] [ [Twitter](https://www.twitter.com/onlydole) ]"],
      ["Franzé Jr.", "[ [GitHub](https://www.github.com/franzejr) ] [ [Twitter](https://www.twitter.com/franzejr) ] [ [Website](http://franzejr.com) ]"],
      ["Andrew Selder", "[ [GitHub](https://www.github.com/aselder) ] [ [Twitter](https://www.twitter.com/aselder) ]"],
      ["George Guimarães", "[ [GitHub](https://www.github.com/georgeguimaraes) ] [ [Twitter](https://www.twitter.com/georgeguimaraes) ]"],
      ["Herman verschooten", "[ [GitHub](https://www.github.com/Hermanverschooten) ] [ [Twitter](https://www.twitter.com/HermvJr) ] [ [Website](http://www.gratwifi.eu) ]"],
      ["João M. D. Moura", "[ [GitHub](https://www.github.com/joaomdmoura) ] [ [Twitter](https://www.twitter.com/joaomdmoura) ] [ [Website](http://joaomdmoura.com) ]"],
      ["Aki \"Angry Beard\" Ristkari", "[ [GitHub](https://www.github.com/Ristkari) ] [ [Twitter](https://www.twitter.com/Ristkari) ]"],
      ["Manuel Zubieta", "[ [GitHub](https://www.github.com/mazubieta) ] [ [Twitter](https://www.twitter.com/zubnola) ] [ [Website](http://zubnola.com) ]"],
      ["Cifer", "[ [GitHub](https://www.github.com/cifer-y) ] [ [Twitter](https://www.twitter.com/cifery13) ]"],
      ["Sean Williamson", "[ [GitHub](https://www.github.com/SuperNullSet) ] [ [Twitter](https://www.twitter.com/SuperNullSet) ] [ [Website](http://supernullset.com/) ]"],
      ["Mohamed A. Chenini", "[ [GitHub](https://www.github.com/amchenini) ] [ [Twitter](https://www.twitter.com/MohamedChenini) ]"],
      ["Richard Wöber", "[ [GitHub](https://www.github.com/rwoeber) ] [ [Website](http://rwoeber.de) ]"],
      ["Kiere El-Shafie", "[ [GitHub](https://www.github.com/kiere) ] [ [Twitter](https://www.twitter.com/kiere) ]"],
      ["Lasse Ebert", "[ [GitHub](https://www.github.com/lasseebert) ] [ [Twitter](https://www.twitter.com/lasseebert) ] [ [Website](http://lasseebert.dk/) ]"],
      ["Mikkel Malmberg", "[ [GitHub](https://www.github.com/mikker) ] [ [Twitter](https://www.twitter.com/mikker) ] [ [Website](https://mikkelmalmberg.com) ]"],
      ["Matt Husby", "[ [GitHub](https://www.github.com/matthusby) ] [ [Twitter](https://www.twitter.com/matthusby) ]"],
      ["Dilip Gurung", "[ [GitHub](https://www.github.com/dilipgurung) ] [ [Twitter](https://www.twitter.com/_dilipgurung) ]"],
      ["Milad Rastian", "[ [GitHub](https://www.github.com/slashmili) ] [ [Twitter](https://www.twitter.com/slashmili) ]"],
      ["Dave Manginelli", "[ [GitHub](https://www.github.com/daveman) ] [ [Twitter](https://www.twitter.com/DaveManginelli) ] [ [Website](http://Voxinusu.com) ]"],
      ["Colin Densem", "[ [GitHub](https://www.github.com/colindensem) ] [ [Twitter](https://www.twitter.com/colindensem) ] [ [Website](http://www.briskoda.net) ]"],
      ["Chris Keele", "[ [GitHub](https://www.github.com/christhekeele) ] [ [Twitter](https://www.twitter.com/christhekeele) ] [ [Website](http://chriskeele.com) ]"],
      ["Fabian Jahr", "[ [GitHub](https://www.github.com/fjahr) ] [ [Twitter](https://www.twitter.com/fjahr) ] [ [Website](http://fjahr.com) ]"],
      ["Angel Imaz", "[ [GitHub](https://www.github.com/tierralibre) ]"],
      ["Koen Chen", ""],
      ["Julius Liu", "[ [GitHub](https://www.github.com/juliusl) ]"],
      ["Otis Clements", "[ [GitHub](https://www.github.com/rclements) ]"],
      ["Mats Norén", "[ [Twitter](https://www.twitter.com/mats_cgo) ]"],
      ["Mark Hutter", "[ [GitHub](https://www.github.com/mrkhutter) ] [ [Twitter](https://www.twitter.com/mrkhutter) ] [ [Website](http://markhutter.io) ]"],
      ["David Sulc", "[ [GitHub](https://www.github.com/davidsulc) ] [ [Twitter](https://www.twitter.com/davidsulc) ] [ [Website](http://www.davidsulc.com) ]"],
      ["Jeremy Pinnix", "[ [GitHub](https://www.github.com/jpinnix) ] [ [Twitter](https://www.twitter.com/jpinnix) ] [ [Website](http://pixelgrazer.com) ]"],
      ["Fred", "[ [GitHub](https://www.github.com/alfredbaudisch) ] [ [Twitter](https://www.twitter.com/alfredbaudisch) ] [ [Website](http://fredbots.com) ]"],
      ["Josh Hogan", "[ [Twitter](https://www.twitter.com/joshhogan) ]"],
    ]
  end

  def patron_saints
    [
      patron_saint('Herman verschooten bvba', 'patron-verschooten.png', 'http://www.verschooten.net', [['github-alt', 'https://github.com/Herman-verschooten-bvba']]),
      patron_saint('Emerald Kingdom Greenhouse', 'patron-emerald_kingdom_greenhouse.png', 'https://github.com/emeraldkingdom', [['twitter', 'http://twitter.com/autoblackout']]),
      patron_saint('Lasse Ebert ApS', 'patron-lasseebert.png', 'http://lasseebert.dk/', [['github-alt', 'https://github.com/lasseebert'], ['twitter', 'https://twitter.com/lasseebert']]),
      patron_saint('Fred', 'patron-fred.png', 'https://fredbots.com', [['github-alt', 'https://github.com/fredbots/'], ['twitter', 'https://twitter.com/fredchatbots'], ['facebook', 'https://facebook.com/fredchatbots']]),
      patron_saint('Airbitz', 'patron-airbitz.png', 'http://airbitz.co', [['twitter', 'https://twitter.com/airbitz'], ['github', 'https://github.com/Airbitz']]),
      patron_saint('ElixirConf', 'patron-elixirconf.png', 'https://ElixirConf.com', [['twitter', 'https://twitter.com/elixirconf']]),
      patron_saint('Elixir Forum', 'patron-elixirforum.png', 'https://elixirforum.com', [['twitter', 'https://twitter.com/elixirforum']]),
      patron_saint('Taylor Dolezal', 'patron-onlydole.png', 'https://github.com/onlydole', [['github-alt', 'https://github.com/onlydole']]),
      patron_saint('Royal Icing', 'patron-royalicing.png', 'https://icing.space', [['github-alt', 'https://github.com/RoyalIcing'], ['twitter', 'http://www.twitter.com/RoyalIcing']]),
      patron_saint('George Guimarães (Plataformatec)', 'patron-plataformatec.png', 'https://plataformatec.com.br', [['github-alt', 'https://github.com/georgeguimaraes'], ['twitter', 'http://www.twitter.com/georgeguimaraes']]),
      patron_saint('bitmatch GmbH', 'patron-bitmatch.png', 'http://www.bitmatch.ch', []),
      patron_saint('Edge Tech Studio', 'patron-edgetech.png', 'http://edgetechstudio.com/', [['github-alt', 'https://www.github.com/joaomdmoura'], ['twitter', 'https://www.twitter.com/joaomdmoura'], ['globe', 'http://joaomdmoura.com/']]),
      patron_saint('Upptec', 'patron-upptec.png', 'http://upptec.se/', [['github-alt', 'https://github.com/Upptec'], ['twitter', 'https://twitter.com/upptec']]),
      patron_saint('Bitboard', 'patron-bitboard.png', 'http://www.getbitboard.com', [['twitter', 'https://www.twitter.com/getbitboard']]),
    ]
  end

  def patron_saint(name, image_file, url, icons)
    { name: name, image_file: image_file, url: url, icons: icons }
  end

  def roadmap_message(date, text)
    { date: date, text: text }
  end

  def message_box(side:, message:)
    partial "partials/message_box", locals: {side: side, message: message}
  end

  def favicon_link_tag(source='source/images/', options={})
    tag('link', {
      :rel  => 'shortcut icon',
      :type => 'image/x-icon',
      :href => image_path(source)
    }.merge!(options.symbolize_keys))
  end

end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

# This should avoid assets problem in production on github pages
activate :relative_assets
set :relative_links, true
