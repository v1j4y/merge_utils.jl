module merge_utils

# Write your package code here.

# Custom sort function
function sortcustom(listoflists, numoflists, indexlists, listoflistscopy, numoflistscopy)
    nlists, dimlist = size(listoflists)
    for i in 1:nlists
        sortperm!(view(indexlists, i, :), view(listoflists, i, :))
    end
    # Apply permutations
    for i in 1:nlists
        for j in 1:dimlist
            p = indexlists[i, j]
            listoflistscopy[i, j] = listoflists[i, p]
            numoflistscopy[i, j]  = numoflists[i, p]
        end
    end
    for i in 1:nlists
        for j in 1:dimlist
            p = indexlists[i, j]
            listoflists[i, j] = listoflistscopy[i, j]
            numoflists[i, j]  = numoflistscopy[i, j]
        end
    end
end
end
