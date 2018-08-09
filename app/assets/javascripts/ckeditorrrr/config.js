CKEDITOR.editorConfig = function (config) {
	config.extraPlugins = 'autogrow';
	config.autoGrow_minHeight = 200;
	config.autoGrow_maxHeight = 600;
	config.autoGrow_bottomSpace = 50;

	config.toolbar_mini = [
	    ["Bold",  "Italic",  "Underline",  "Strike",  "-",  "Subscript",  "Superscript"],
	  ];
	config.toolbar = "mini";

}