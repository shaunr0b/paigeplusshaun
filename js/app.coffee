s = skrollr.init()

$ ->
  $.localScroll()


  $mainNavWrapper = $('#main-nav-wrapper')
  $mainNav = $('#main-nav')

  $mainNavWrapper.waypoint (direction)->

    if direction == 'down'
      $mainNav.addClass 'sticky'
    else
      $mainNav.removeClass 'sticky'





angular.module('PaigePlusShaun', [])
  .controller 'WeddingPartyCtrl', ['$scope', ($scope)->

    bridesMaids = [
      { name: "Chelsea", image: 'chelsea.jpg', nickname: 'chi chi'}
      { name: "Linley",  image: 'lineley.jpg', nickname: 'Left-hand Woman In (Solving) Crime'}
      { name: "Abby",    image: 'abby.png', nickname: 'Nike'}
      { name: "Alex",    image: 'alex.png', nickname: 'Trash-talker'}
      { name: "Emma",    image: 'emma.jpg', nickname: 'The Snuggler'}
      { name: "Jessica", image: 'jesspaige.png', nickname: 'Mama Dolittle'}
      { name: "Katie",   image: 'katie.png', nickname: 'Orangina'}
    ]
    groomsmen = [
      { name: "Maitreya",  image: 'maitreya.png',  nickname: 'Rock Jock'}
      { name: "Rafael",    image: 'rafael.png',  nickname: 'Herbalist'}
      { name: "Aaron",     image: 'aaron.png',  nickname: 'Macgyver'}
      { name: "Bill",      image: 'bill.jpg',  nickname: 'Andy Warhol'}
      { name: "Dave",      image: 'dave.png',  nickname: 'The Doctor of Cool'}
      { name: "Evan",      image: 'judah.png',  nickname: 'Battle Star Judactica'}
      { name: "Connolly",  image: 'connolly.png',  nickname: 'Mountain Man'}
    ]

    groomsmanImagePath = '/images/groomsmen/'
    bridesMaidsImagePath = '/images/bridesmaids/'

    $scope.bridesMaids = _.map bridesMaids, (bridesMaid)-> "#{bridesMaidsImagePath}#{bridesMaid}"

    addImageUrlPrefix = (collection, imageUrlPrefix)->
      _.map collection, (item)->
        {
          name: item.name
          nickname: item.nickname
          image: imageUrlPrefix + item.image
        }

    $scope.groomsmen = addImageUrlPrefix(groomsmen, groomsmanImagePath)
    $scope.bridesMaids = addImageUrlPrefix(bridesMaids, bridesMaidsImagePath)

    $scope.activate = (person)->
      $scope.activeImage = person.image
      $scope.activeNickname = person.nickname

  ]
