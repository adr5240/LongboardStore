export const fetchItems = (item_type, filter) => {
    return $.ajax({
        method: 'GET',
        url: `/api/${item_type}`,
        data: filter,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const fetchItem = (item_type, item_id, filter) => {
    return $.ajax({
        method: 'GET',
        url: `/api/${item_type}/${item_id}`,
        data: filter,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
