#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKLabel+Properties.h>

@implementation GTKLabel (Properties)

- (NSString *)label {
	return [NSString stringWithUTF8String: gtk_label_get_text (GTK_LABEL (self.widget))];
}

- (id)label:(NSString *)label {
	gtk_label_set_text (GTK_LABEL (self.widget), [label UTF8String]);
	return self;
}

- (float)xAlign {
	float x;
	g_object_get (G_OBJECT (self.widget), "xalign", &x, NULL);
	return x;
}

- (float)yAlign {
	float y;
	g_object_get (G_OBJECT (self.widget), "yalign", &y, NULL);
	return y;
}

- (id)xAlign:(float)xAlign {
	g_object_set (G_OBJECT (self.widget), "xalign", xAlign, NULL);
	return self;
}

- (id)yAlign:(float)yAlign {
	g_object_set (G_OBJECT (self.widget), "yalign", yAlign, NULL);
	return self;
}

- (id)justify:(GtkJustification)jtype {
	gtk_label_set_justify (GTK_LABEL (self.widget), jtype);
	return self;
}

- (GtkJustification)justify {
	return gtk_label_get_justify (GTK_LABEL (self.widget));
}

- (PangoEllipsizeMode)ellipsizeMode {
	return gtk_label_get_ellipsize (GTK_LABEL (self.widget));
}

- (id)ellipsizeMode:(PangoEllipsizeMode)mode {
	gtk_label_set_ellipsize (GTK_LABEL (self.widget), mode);
	return self;
}

- (int)desiredWidthInCharacters {
	return gtk_label_get_width_chars (GTK_LABEL (self.widget));
}

- (id)desiredWithdInCharacters:(int)width {
	gtk_label_set_width_chars (GTK_LABEL (self.widget), width);
	return self;
}

- (id)wrap:(bool)wrap {
	gtk_label_set_line_wrap (GTK_LABEL (self.widget), wrap);
	return self;
}

- (bool)wrap {
	return gtk_label_get_line_wrap (GTK_LABEL (self.widget));
}

- (id)lineWrapMode:(PangoWrapMode)mode {
	gtk_label_set_line_wrap_mode (GTK_LABEL (self.widget), mode);
	return self;
}

- (PangoWrapMode)lineWrapMode {
	return gtk_label_get_line_wrap_mode (GTK_LABEL (self.widget));
}

- (bool)selectable {
	return gtk_label_get_selectable (GTK_LABEL (self.widget));
}

- (id)selectable:(bool)setting {
	gtk_label_set_selectable (GTK_LABEL (self.widget), setting);
	return self;
}

- (bool)singleLineMode {
	return gtk_label_get_single_line_mode (GTK_LABEL (self.widget));
}

- (id)singleLineMode:(bool)setting {
	gtk_label_set_single_line_mode (GTK_LABEL (self.widget), setting);
	return self;
}

- (double)angle {
	return gtk_label_get_angle (GTK_LABEL (self.widget));
}

- (id)angle:(double)angle {
	gtk_label_set_angle (GTK_LABEL (self.widget), angle);
	return self;
}

@end
