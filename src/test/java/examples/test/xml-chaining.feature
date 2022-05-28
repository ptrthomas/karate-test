Feature:

  Scenario:
    * url 'https://httpbin.org/xml'
    * method get
    * def firstResponse = response

    * url 'https://httpbin.org/get'
    * method get

    * match firstResponse ==
    """
    <slideshow
        title="Sample Slide Show"
        date="Date of publication"
        author="Yours Truly">
        <slide type="all">
          <title>Wake up to WonderWidgets!</title>
        </slide>
        <slide type="all">
            <title>Overview</title>
            <item>Why <em>WonderWidgets</em> are great</item>
            <item/>
            <item>Who <em>buys</em> WonderWidgets</item>
        </slide>
    </slideshow>
    """
    * def firstSlide = $firstResponse/slideshow/slide[1]
    * match firstSlide == <slide type="all"><title>Wake up to WonderWidgets!</title></slide>