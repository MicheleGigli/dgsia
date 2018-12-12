<%-- 
    Document   : list_combo_filter_categories
    Created on : 29-nov-2018, 12.37.46
    Author     : ufesta
--%>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(document).ready(function() {
                    let dropdown = $('#dropdown1');
                    $.ajax({
                        url: "./api/mycategories"
                    }).then(function(data) {
                        dropdown.empty();
                        $.each(data, function (key, entry) {
                            $.each(entry, function (key1, entry1) {
                                dropdown.append($('<option></option>').attr('value', entry1.code).text(entry1.code));
                            });
                        });
                    });

    $("#dropdown1").change(function()
    {
        let dropdown2 = $('#dropdown2');
        let dropdown1 = $('#dropdown1');
        var dataString = 'parentCode='+dropdown1.val();
        $.ajax({
            url: "./api/mycategories",
            data: dataString
        }).then(function(data) {
            dropdown2.empty();
            $.each(data, function (key, entry) {
                $.each(entry, function (key1, entry1) {
                    dropdown2.append($('<option></option>').attr('value', entry1.code).text(entry1.code));
                });
            });
        });
    });

});
</script>
<div>
    <select id="dropdown1" name="dropdown1">
    </select>
    <select id="dropdown2" name="dropdown2">
    </select>
</div>