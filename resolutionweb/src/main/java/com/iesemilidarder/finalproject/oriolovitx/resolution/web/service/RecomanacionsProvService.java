package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;


import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.RecomanacionsProv;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

@Service
public class RecomanacionsProvService {

    private static List <RecomanacionsProv> recomanacionsProvList = new List <RecomanacionsProv>() {
        @Override
        public
        int size ( ) {
            return 0;
        }

        @Override
        public
        boolean isEmpty ( ) {
            return false;
        }

        @Override
        public
        boolean contains (Object o) {
            return false;
        }

        @Override
        public
        Iterator <RecomanacionsProv> iterator ( ) {
            return null;
        }

        @Override
        public
        Object[] toArray ( ) {
            return new Object[0];
        }

        @Override
        public
        <T> T[] toArray (T[] a) {
            return null;
        }

        @Override
        public
        boolean add (RecomanacionsProv recomanacionsProv) {
            return false;
        }

        @Override
        public
        boolean remove (Object o) {
            return false;
        }

        @Override
        public
        boolean containsAll (Collection <?> c) {
            return false;
        }

        @Override
        public
        boolean addAll (Collection <? extends RecomanacionsProv> c) {
            return false;
        }

        @Override
        public
        boolean addAll (int index, Collection <? extends RecomanacionsProv> c) {
            return false;
        }

        @Override
        public
        boolean removeAll (Collection <?> c) {
            return false;
        }

        @Override
        public
        boolean retainAll (Collection <?> c) {
            return false;
        }

        @Override
        public
        void clear ( ) {

        }

        @Override
        public
        RecomanacionsProv get (int index) {
            return null;
        }

        @Override
        public
        RecomanacionsProv set (int index, RecomanacionsProv element) {
            return null;
        }

        @Override
        public
        void add (int index, RecomanacionsProv element) {

        }

        @Override
        public
        RecomanacionsProv remove (int index) {
            return null;
        }

        @Override
        public
        int indexOf (Object o) {
            return 0;
        }

        @Override
        public
        int lastIndexOf (Object o) {
            return 0;
        }

        @Override
        public
        ListIterator <RecomanacionsProv> listIterator ( ) {
            return null;
        }

        @Override
        public
        ListIterator <RecomanacionsProv> listIterator (int index) {
            return null;
        }

        @Override
        public
        List <RecomanacionsProv> subList (int fromIndex, int toIndex) {
            return null;
        }
    };
}
