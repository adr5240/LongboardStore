export const fetchPictures = (filter) => {
    return $.ajax({
        method: 'GET',
        url: "/api/pictures",
        data: filter,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const fetchPicture = (filter) => {
    return $.ajax({
        method: 'GET',
        url: "/api/pictures/1",
        data: filter,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
