document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "name",
    template: {
      type: "description",
      fields: {
        description: "description"
      }
    },
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "products",
        header: "<strong>PRODUCTOS:</strong>",
      },
      {
        listLocation: "posts",
        header: "<strong>NOTICIAS:</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        $input.val("")
        Turbolinks.visit(url)
      }
    }
  };
  $input.easyAutocomplete(options)

  $('.btnslide').click(function() {
        $(".contenedor").animate({
          width:"show"
        },1000);
        $("#slideIzq").animate({
          width:"show"
        },1000);
        $(".icon-buscador").css({ 'font-weight' : '700', 'color' : 'rgb(0, 126, 158)' });
        $(".cerrar-modal").css({ 'border-right' : '1px solid rgb(153,153,153)', 'color' : 'rgb(153,153,153)','cursor' : 'pointer' });
        $(".label-close").css({ 'color' : 'rgb(153,153,153)' });
      });

      $('.cerrar-modal').click(function() {
        $(".contenedor").animate({
          width:"hide"
        },1000);
        $("#slideIzq").animate({
          width:"hide"
        },1000);
        $(".icon-buscador").css({ 'font-weight' : '500', 'color' : '#999' });
        $(".cerrar-modal").css({ 'border-right' : '1px solid transparent', 'color' : 'transparent','cursor' : 'unset' });
        $(".label-close").css({ 'color' : 'transparent' });
      });
});