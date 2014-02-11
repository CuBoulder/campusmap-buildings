@font_reg: "Ubuntu Regular","Arial Regular","DejaVu Sans Book";

/* Official UCB colors */
@ucb-gold: #CFB87C; 
@ucb-black:#000000;
@ucb-dark-grey:#565A5C;
@ucb-light-grey:#A2A4A3;

/* Building Colors */
@building-university: @ucb-gold;//#d8a227;
@building-apartments: #f3de55;
@building-dormitory: @building-apartments;
@building-house: @building-apartments;
@building-residential: @building-apartments;
@building-office: #838383;

//@fill: @ucb-light-grey; // Default

.building{
   building-height:-1; 
}

// CU buildings
#cu.building{  
  building-fill-opacity:0.8; 
  polygon-fill: @ucb-light-grey;
  
  /* Colors */
  [building='university']{
    polygon-fill: @building-university;
  }
  [building='apartments']{
    polygon-fill: @building-apartments;
  }
  [building='dormitory']{
    polygon-fill: @building-dormitory;
  }
  [building='house']{
    polygon-fill: @building-house;
  }
  [building='residential']{
    polygon-fill: @building-residential;
  }
  [building='office']{
    polygon-fill: @building-office;
  }
  
  /* Labels */
  .building::labels{
    [zoom>15][zoom<18]{
      text-face-name:@font_reg;
      text-fill:#555;
      text-halo-fill:#fff;
      text-halo-radius:2;
      text-name:"[short_name]";
    }
    [zoom>=18]{
      text-face-name:@font_reg;
      text-fill:#555;
      text-halo-fill:#fff;
      text-halo-radius:2;
      text-name:"[name]";
    }  
  } 
}

@lightness-factor: 30;
// Non-CU buildings
#non-cu.building{  
  building-fill-opacity:0.1;
  polygon-fill: lighten(@ucb-light-grey, @lightness-factor);
  
  /* Colors */
  [building='university']{
    polygon-fill: lighten(@building-university, @lightness-factor);
  }
  [building='apartments']{
    polygon-fill: lighten(@building-apartments, @lightness-factor);
  }
  [building='dormitory']{
    polygon-fill: lighten(@building-dormitory, @lightness-factor);
  }
  [building='house']{
    polygon-fill: lighten(@building-house, @lightness-factor);
  }
  [building='residential']{
    polygon-fill: lighten(@building-residential, @lightness-factor);
  }
  [building='office']{
    polygon-fill: lighten(@building-office, @lightness-factor);
  }
  
  [zoom >=18]{
  /* Colors */
    polygon-fill: lighten(@ucb-light-grey, @lightness-factor/1.2);
  [building='university']{
    polygon-fill: lighten(@building-university, @lightness-factor/2);
  }
  [building='apartments']{
    polygon-fill: lighten(@building-apartments, @lightness-factor/2);
  }
  [building='dormitory']{
    polygon-fill: lighten(@building-dormitory, @lightness-factor/2);
  }
  [building='house']{
    polygon-fill: lighten(@building-house, @lightness-factor/2);
  }
  [building='residential']{
    polygon-fill: lighten(@building-residential, @lightness-factor/2);
  }
  [building='office']{
    polygon-fill: lighten(@building-office, @lightness-factor/2);
  }
  }

}