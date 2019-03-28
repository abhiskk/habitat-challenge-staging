FROM darkstar112358/sample-submission:v2

# install dependencies in the habitat conda environment
RUN /bin/bash -c ". activate habitat; pip install torch"

ADD myagent /myagent
ADD submission.sh /submission.sh
