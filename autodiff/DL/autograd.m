function autogradfunc = autograd(problem)

    mycostfunction = problem.cost;
    x = problem.M.rand();
    
    function [y egrad] = autogradfunc0(mycostfunction,x)
        y = mycostfunction(x);
        egrad = dlgradient(y,x,'RetainData',true);
    end

    autogradfunc = @(x) autogradfunc0(mycostfunction,x);
    
end