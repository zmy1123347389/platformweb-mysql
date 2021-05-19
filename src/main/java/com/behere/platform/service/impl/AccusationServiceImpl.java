package com.behere.platform.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.behere.common.utils.Query;
import com.behere.platform.dao.AccusationDao;
import com.behere.platform.domain.AccusationDO;
import com.behere.platform.domain.AccusationPic;
import com.behere.platform.service.AccusationService;

/**
 * @author: Fengj
 */
@Service
public class AccusationServiceImpl implements AccusationService {
    @Autowired
    private AccusationDao accusationDao;

    @Override
    public List<AccusationDO> queryAccusations(Query query) {
        return accusationDao.queryAccusations(query);
    }

    @Override
    public int count(Query query) {
        return accusationDao.count(query);
    }

    @Override
    public AccusationDO queryAccusationById(String id) {
        return accusationDao.queryAccusationById(id);
    }

    @Override
    public int updateAccusationDealStatus(int deleted, String id) {
        return accusationDao.updateAccusationDealStatus(deleted, id);
    }

    @Override
    public List<AccusationPic> queryAccusationPics(String reportId) {
        return accusationDao.queryAccusationPics(reportId);
    }

    @Override
    public String queryReportContentByAccusationId(int accusationId) {
        return accusationDao.queryReportContentByAccusationId(accusationId);
    }
}